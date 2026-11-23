.class Lorg/hmwebrtc/NativeCapturerObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CapturerObserver;


# instance fields
.field private final nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCapturerStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFrameCaptured(Lorg/hmwebrtc/VideoFrame;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;->adaptFrame(Lorg/hmwebrtc/VideoFrame;)Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropX:I

    .line 15
    .line 16
    iget v3, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropY:I

    .line 17
    .line 18
    iget v4, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropWidth:I

    .line 19
    .line 20
    iget v5, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropHeight:I

    .line 21
    .line 22
    iget v6, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->scaleWidth:I

    .line 23
    .line 24
    iget v7, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->scaleHeight:I

    .line 25
    .line 26
    invoke-interface/range {v1 .. v7}, Lorg/hmwebrtc/VideoFrame$Buffer;->cropAndScale(IIIIII)Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lorg/hmwebrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lorg/hmwebrtc/NativeAndroidVideoTrackSource;

    .line 31
    .line 32
    new-instance v3, Lorg/hmwebrtc/VideoFrame;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-wide v4, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->timestampNs:J

    .line 39
    .line 40
    invoke-direct {v3, v1, p1, v4, v5}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lorg/hmwebrtc/NativeAndroidVideoTrackSource;->onFrameCaptured(Lorg/hmwebrtc/VideoFrame;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$Buffer;->release()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
