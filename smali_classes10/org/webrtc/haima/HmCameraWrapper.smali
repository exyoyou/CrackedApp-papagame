.class public Lorg/webrtc/haima/HmCameraWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HaimaCameraWrapper"

.field private static mInstance:Lorg/webrtc/haima/HmCameraWrapper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field protected cameraRecorder:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

.field private ly:Landroid/widget/LinearLayout;

.field private mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

.field private mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

.field private mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

.field private sampleGLView:Landroid/opengl/GLSurfaceView;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

    .line 8
    .line 9
    new-instance v0, Lorg/webrtc/haima/beans/CameraConfig;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/webrtc/haima/beans/CameraConfig;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmCameraWrapper;->lambda$setUpCameraInternal$2()V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmCameraWrapper;->internalPermissionCheck(Lorg/webrtc/haima/HmDCCamera;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/HmCameraWrapper;->lambda$internalPermissionCheck$0(Lorg/webrtc/haima/HmDCCamera;Z)V

    return-void
.end method

.method public static synthetic c(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmCameraWrapper;->lambda$stopRecord$1()V

    return-void
.end method

.method private checkCameraPermission(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "android.permission.CAMERA"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lorg/webrtc/haima/listeners/HmPermissionChecker;->checkPermissionResult(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public static getInstance()Lorg/webrtc/haima/HmCameraWrapper;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmCameraWrapper;->mInstance:Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/webrtc/haima/HmCameraWrapper;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/webrtc/haima/HmCameraWrapper;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/webrtc/haima/HmCameraWrapper;->mInstance:Lorg/webrtc/haima/HmCameraWrapper;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmCameraWrapper;->mInstance:Lorg/webrtc/haima/HmCameraWrapper;

    .line 13
    .line 14
    return-object v0
.end method

.method private internalPermissionCheck(Lorg/webrtc/haima/HmDCCamera;)V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string v3, "permission_check_each_local"

    .line 9
    .line 10
    iget-object v4, p0, Lorg/webrtc/haima/HmCameraWrapper;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 11
    .line 12
    iget-boolean v4, v4, Lorg/webrtc/haima/beans/CameraConfig;->permissionCheckEachTimeLocal:Z

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "permission_check_each_server"

    .line 23
    .line 24
    iget-object v4, p0, Lorg/webrtc/haima/HmCameraWrapper;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 25
    .line 26
    iget-boolean v4, v4, Lorg/webrtc/haima/beans/CameraConfig;->permissionCheckEachTimeServer:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v4, 0x0

    .line 33
    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catch_0
    nop

    .line 38
    :goto_2
    const/16 v3, 0x34a0

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v3, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/webrtc/haima/beans/CameraConfig;->allowPermissionCheck()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    :goto_3
    const-string v3, "HaimaCameraWrapper"

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const-string v0, "request permission each time."

    .line 65
    .line 66
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmCameraWrapper;->checkCameraPermission(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    const-string v0, "checkCameraPermission."

    .line 95
    .line 96
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/webrtc/haima/HmDCCamera;->getVdTransportType()Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v3, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 104
    .line 105
    const-string v4, "camera opened."

    .line 106
    .line 107
    if-ne v0, v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1, v1, v2, v4}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/webrtc/haima/HmDCCamera;->startRecordOverRtcChannel()V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {p1, v1, v2, v4}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lorg/webrtc/haima/HmCameraWrapper;->setUpCameraInternal()V

    .line 120
    .line 121
    .line 122
    :goto_4
    return-void

    .line 123
    :cond_5
    const-string v0, "Not Granted CameraPermission."

    .line 124
    .line 125
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_5
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    const/16 v0, 0x349e

    .line 133
    .line 134
    const-string v1, "camera permission not granted, handler is null"

    .line 135
    .line 136
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "camera permission not granted, handler is null."

    .line 140
    .line 141
    invoke-virtual {p1, v2, v2, v0}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    new-instance v1, Lorg/webrtc/haima/d;

    .line 146
    .line 147
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/d;-><init>(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V

    .line 148
    .line 149
    .line 150
    const-string p1, "android.permission.CAMERA"

    .line 151
    .line 152
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/listeners/HmPermissionHandler;->request(Ljava/lang/String;Lorg/webrtc/haima/listeners/HmPermissionCallback;)Z

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private synthetic lambda$internalPermissionCheck$0(Lorg/webrtc/haima/HmDCCamera;Z)V
    .locals 4

    .line 1
    const-string v0, "HaimaCameraWrapper"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const-string p2, "GRANTED"

    .line 7
    .line 8
    invoke-static {v0, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/webrtc/haima/HmDCCamera;->getVdTransportType()Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 16
    .line 17
    const-string v2, "camera opened."

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne p2, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v3, v1, v2}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/webrtc/haima/HmDCCamera;->startRecordOverRtcChannel()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1, v3, v1, v2}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lorg/webrtc/haima/HmCameraWrapper;->setUpCameraInternal()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p2, "NOT_GRANTED"

    .line 37
    .line 38
    invoke-static {v0, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 p2, 0x349e

    .line 42
    .line 43
    const-string v0, "camera permission not granted."

    .line 44
    .line 45
    invoke-static {p2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "permission not granted."

    .line 49
    .line 50
    invoke-virtual {p1, v1, v1, p2}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private synthetic lambda$setUpCameraInternal$2()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->ly:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/Activity;

    .line 34
    .line 35
    iget-object v2, p0, Lorg/webrtc/haima/HmCameraWrapper;->ly:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->sampleGLView:Landroid/opengl/GLSurfaceView;

    .line 42
    .line 43
    new-instance v0, Landroid/opengl/GLSurfaceView;

    .line 44
    .line 45
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->sampleGLView:Landroid/opengl/GLSurfaceView;

    .line 57
    .line 58
    new-instance v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/app/Activity;

    .line 67
    .line 68
    iget-object v2, p0, Lorg/webrtc/haima/HmCameraWrapper;->sampleGLView:Landroid/opengl/GLSurfaceView;

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;-><init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lorg/webrtc/haima/HmCameraWrapper$2;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lorg/webrtc/haima/HmCameraWrapper$2;-><init>(Lorg/webrtc/haima/HmCameraWrapper;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraRecordListener(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDCCamera;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 89
    .line 90
    invoke-virtual {v2}, Lorg/webrtc/haima/HmDCCamera;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraSize(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 99
    .line 100
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDCCamera;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v2, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 105
    .line 106
    invoke-virtual {v2}, Lorg/webrtc/haima/HmDCCamera;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->videoSize(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 115
    .line 116
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDCCamera;->getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->lensFacing(Lorg/webrtc/haima/camerarecorder/LensFacing;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Lorg/webrtc/haima/HmCameraWrapper;->mInstance:Lorg/webrtc/haima/HmCameraWrapper;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->haimaCameraWrapper(Lorg/webrtc/haima/HmCameraWrapper;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 131
    .line 132
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDCCamera;->getFps()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget-object v2, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 137
    .line 138
    invoke-virtual {v2}, Lorg/webrtc/haima/HmDCCamera;->getBitrate()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fpsAndBitrate(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->build()Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->cameraRecorder:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 151
    .line 152
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->ly:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper;->sampleGLView:Landroid/opengl/GLSurfaceView;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private synthetic lambda$stopRecord$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->ly:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setUpCameraInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    .line 20
    new-instance v1, Lorg/webrtc/haima/c;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lorg/webrtc/haima/c;-><init>(Lorg/webrtc/haima/HmCameraWrapper;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkAudioRecordPermission()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lorg/webrtc/haima/listeners/HmPermissionChecker;->checkPermissionResult(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/HmDCCamera;->getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public installCamera(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public registerPermissionChecker(Lorg/webrtc/haima/listeners/HmPermissionChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

    .line 2
    .line 3
    return-void
.end method

.method public registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

    .line 2
    .line 3
    return-void
.end method

.method public requestAudioRecordPermission(Lorg/webrtc/haima/listeners/HmPermissionCallback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lorg/webrtc/haima/listeners/HmPermissionHandler;->request(Ljava/lang/String;Lorg/webrtc/haima/listeners/HmPermissionCallback;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 2
    .line 3
    return-void
.end method

.method public startRecord(Lorg/webrtc/haima/HmDCCamera;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 2
    .line 3
    const/16 v0, 0x349f

    .line 4
    .line 5
    const-string v1, "apply camera permission."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p1, v0, v2, v1}, Lorg/webrtc/haima/HmDCCamera;->openACK(ZILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/webrtc/haima/HmDCCamera;->getVdTransportType()Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmCameraWrapper;->internalPermissionCheck(Lorg/webrtc/haima/HmDCCamera;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lorg/webrtc/haima/HmCameraWrapper$1;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmCameraWrapper$1;-><init>(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->sampleGLView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->cameraRecorder:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->stop()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->cameraRecorder:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->release()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->cameraRecorder:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->ly:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/Activity;

    .line 44
    .line 45
    new-instance v1, Lorg/webrtc/haima/e;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lorg/webrtc/haima/e;-><init>(Lorg/webrtc/haima/HmCameraWrapper;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public unRegisterPermissionChecker()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionChecker:Lorg/webrtc/haima/listeners/HmPermissionChecker;

    .line 3
    .line 4
    return-void
.end method

.method public unRegisterPermissionHandler()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mPermissionHandler:Lorg/webrtc/haima/listeners/HmPermissionHandler;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mContext:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    return-void
.end method

.method public uninstallCamera()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/HmCameraWrapper;->stopRecord()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeVideoData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper;->mHmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmDCDevice;->send([B)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
