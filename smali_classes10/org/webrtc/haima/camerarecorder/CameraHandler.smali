.class public Lorg/webrtc/haima/camerarecorder/CameraHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_AUTO_FOCUS:I = 0x5

.field private static final MSG_MANUAL_FOCUS:I = 0x3

.field private static final MSG_PREVIEW_START:I = 0x1

.field private static final MSG_PREVIEW_STOP:I = 0x2

.field private static final MSG_SWITCH_FLASH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraHandler"


# instance fields
.field private eventX:F

.field private eventY:F

.field private final mLock:Ljava/lang/Object;

.field private thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->initValue()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private initValue()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewWidth:I

    .line 3
    .line 4
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewHeight:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventX:F

    .line 8
    .line 9
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventY:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method changeAutoFocus()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method changeManualFocusPoint(FFII)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewWidth:I

    .line 2
    .line 3
    iput p4, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewHeight:I

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventX:F

    .line 6
    .line 7
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventY:F

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    if-eq v1, v6, :cond_3

    .line 14
    .line 15
    if-eq v1, v5, :cond_2

    .line 16
    .line 17
    if-eq v1, v4, :cond_1

    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 22
    .line 23
    if-eqz p1, :cond_7

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->changeAutoFocus()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "unknown message:what="

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->switchFlashMode()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 64
    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventX:F

    .line 68
    .line 69
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->eventY:F

    .line 70
    .line 71
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewWidth:I

    .line 72
    .line 73
    iget v4, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->viewHeight:I

    .line 74
    .line 75
    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/webrtc/haima/camerarecorder/CameraThread;->changeManualFocusPoint(FFII)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_0
    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 136
    .line 137
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 138
    .line 139
    invoke-virtual {v1, v2, p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->startPreview(II)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_1
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    throw p1
.end method

.method startPreview(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method stopPreview(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x2

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraHandler;->thread:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, v1, Lorg/webrtc/haima/camerarecorder/CameraThread;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method switchFlashMode()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
