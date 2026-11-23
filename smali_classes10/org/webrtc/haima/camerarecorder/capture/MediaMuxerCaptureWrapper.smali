.class public Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private isStarted:Z

.field private mFile:Ljava/io/RandomAccessFile;

.field private mHmCamera:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lorg/webrtc/haima/HmCameraWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted:Z

    .line 13
    .line 14
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->mHmCamera:Ljava/lang/ref/SoftReference;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method addEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Video encoder already added."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "unsupported encoder"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public isStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method declared-synchronized start()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public startRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->startRecording()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public stopRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->stopRecording()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;

    .line 10
    .line 11
    return-void
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-array p1, p3, [B

    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->mFile:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->mHmCamera:Ljava/lang/ref/SoftReference;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lorg/webrtc/haima/HmCameraWrapper;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lorg/webrtc/haima/HmCameraWrapper;->writeVideoData([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method
