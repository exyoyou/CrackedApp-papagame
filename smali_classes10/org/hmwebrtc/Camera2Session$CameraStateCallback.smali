.class Lorg/hmwebrtc/Camera2Session$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/Camera2Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;-><init>(Lorg/hmwebrtc/Camera2Session;)V

    return-void
.end method

.method private getErrorDescription(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Unknown camera error: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    const-string p1, "Camera service has encountered a fatal error."

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    const-string p1, "Camera device has encountered a fatal error."

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_2
    const-string p1, "Camera device could not be opened due to a device policy."

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_3
    const-string p1, "Camera device could not be opened because there are too many other open camera devices."

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_4
    const-string p1, "Camera device is in use already."

    .line 47
    .line 48
    return-object p1
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "Camera2Session"

    .line 7
    .line 8
    const-string v0, "Camera device closed."

    .line 9
    .line 10
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 14
    .line 15
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$500(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$Events;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lorg/hmwebrtc/CameraSession$Events;->onCameraClosed(Lorg/hmwebrtc/CameraSession;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$100(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 15
    .line 16
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lorg/hmwebrtc/Camera2Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 28
    .line 29
    sget-object v1, Lorg/hmwebrtc/Camera2Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/hmwebrtc/Camera2Session;->access$202(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$SessionState;)Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 35
    .line 36
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$300(Lorg/hmwebrtc/Camera2Session;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 42
    .line 43
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$400(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Lorg/hmwebrtc/CameraSession$FailureType;->DISCONNECTED:Lorg/hmwebrtc/CameraSession$FailureType;

    .line 48
    .line 49
    const-string v1, "Camera disconnected / evicted."

    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 56
    .line 57
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$500(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$Events;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lorg/hmwebrtc/CameraSession$Events;->onCameraDisconnected(Lorg/hmwebrtc/CameraSession;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->getErrorDescription(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lorg/hmwebrtc/Camera2Session;->access$600(Lorg/hmwebrtc/Camera2Session;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Camera2Session"

    .line 7
    .line 8
    const-string v1, "Camera opened."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/hmwebrtc/Camera2Session;->access$702(Lorg/hmwebrtc/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/hmwebrtc/Camera2Session;->access$800(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    .line 31
    .line 32
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 33
    .line 34
    invoke-static {v2}, Lorg/hmwebrtc/Camera2Session;->access$800(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v2, v2, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Lorg/hmwebrtc/Camera2Session;->access$1002(Lorg/hmwebrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1100(Lorg/hmwebrtc/Camera2Session;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 58
    .line 59
    new-instance v2, Landroid/view/Surface;

    .line 60
    .line 61
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 62
    .line 63
    invoke-static {v3}, Lorg/hmwebrtc/Camera2Session;->access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v2}, Lorg/hmwebrtc/Camera2Session;->access$1002(Lorg/hmwebrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 79
    .line 80
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 81
    .line 82
    invoke-static {v2}, Lorg/hmwebrtc/Camera2Session;->access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v0, v2}, Lorg/hmwebrtc/CaptureIdImageGenerator;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 96
    .line 97
    invoke-static {v2, v0}, Lorg/hmwebrtc/Camera2Session;->access$1202(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/CaptureIdImageGenerator;)Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 101
    .line 102
    invoke-static {v2}, Lorg/hmwebrtc/Camera2Session;->access$1200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 107
    .line 108
    invoke-static {v3}, Lorg/hmwebrtc/Camera2Session;->access$800(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v3, v3, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    .line 113
    .line 114
    iget-object v4, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 115
    .line 116
    invoke-static {v4}, Lorg/hmwebrtc/Camera2Session;->access$800(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget v4, v4, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 121
    .line 122
    iget-object v5, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 123
    .line 124
    invoke-static {v5}, Lorg/hmwebrtc/Camera2Session;->access$1300(Lorg/hmwebrtc/Camera2Session;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {v2, v3, v4, v5}, Lorg/hmwebrtc/CaptureIdImageGenerator;->init(IIZ)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 132
    .line 133
    new-instance v3, Landroid/view/Surface;

    .line 134
    .line 135
    invoke-virtual {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3}, Lorg/hmwebrtc/Camera2Session;->access$1002(Lorg/hmwebrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 143
    .line 144
    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 146
    .line 147
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1000(Lorg/hmwebrtc/Camera2Session;)Landroid/view/Surface;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-nez v0, :cond_2

    .line 152
    .line 153
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 154
    .line 155
    new-instance v2, Landroid/view/Surface;

    .line 156
    .line 157
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 158
    .line 159
    invoke-static {v3}, Lorg/hmwebrtc/Camera2Session;->access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v2}, Lorg/hmwebrtc/Camera2Session;->access$1002(Lorg/hmwebrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 171
    .line 172
    .line 173
    :cond_2
    const/4 v0, 0x1

    .line 174
    :try_start_0
    new-array v0, v0, [Landroid/view/Surface;

    .line 175
    .line 176
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 177
    .line 178
    invoke-static {v2}, Lorg/hmwebrtc/Camera2Session;->access$1000(Lorg/hmwebrtc/Camera2Session;)Landroid/view/Surface;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const/4 v3, 0x0

    .line 183
    aput-object v2, v0, v3

    .line 184
    .line 185
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v2, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;

    .line 190
    .line 191
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 192
    .line 193
    invoke-direct {v2, v3, v1}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;-><init>(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$1;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 197
    .line 198
    invoke-static {v1}, Lorg/hmwebrtc/Camera2Session;->access$1500(Lorg/hmwebrtc/Camera2Session;)Landroid/os/Handler;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catch_0
    move-exception p1

    .line 207
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v2, "Failed to create capture session. "

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v0, p1}, Lorg/hmwebrtc/Camera2Session;->access$600(Lorg/hmwebrtc/Camera2Session;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
