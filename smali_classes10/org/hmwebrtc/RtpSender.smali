.class public Lorg/hmwebrtc/RtpSender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dtmfSender:Lorg/hmwebrtc/DtmfSender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nativeRtpSender:J

.field private ownsTrack:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/hmwebrtc/RtpSender;->ownsTrack:Z

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 8
    .line 9
    invoke-static {p1, p2}, Lorg/hmwebrtc/RtpSender;->nativeGetTrack(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lorg/hmwebrtc/MediaStreamTrack;->createMediaStreamTrack(J)Lorg/hmwebrtc/MediaStreamTrack;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/hmwebrtc/RtpSender;->cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;

    .line 18
    .line 19
    invoke-static {p1, p2}, Lorg/hmwebrtc/RtpSender;->nativeGetDtmfSender(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long v2, p1, v0

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    new-instance v0, Lorg/hmwebrtc/DtmfSender;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2}, Lorg/hmwebrtc/DtmfSender;-><init>(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iput-object v0, p0, Lorg/hmwebrtc/RtpSender;->dtmfSender:Lorg/hmwebrtc/DtmfSender;

    .line 37
    .line 38
    return-void
.end method

.method private checkRtpSenderExists()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "RtpSender has been disposed."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private static native nativeGetDtmfSender(J)J
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeGetParameters(J)Lorg/hmwebrtc/RtpParameters;
.end method

.method private static native nativeGetStreams(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeRequestEncoderSendKeyFrame(J)V
.end method

.method private static native nativeSetFrameEncryptor(JJ)V
.end method

.method private static native nativeSetParameters(JLorg/hmwebrtc/RtpParameters;)Z
.end method

.method private static native nativeSetStreams(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeSetTrack(JJ)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/RtpSender;->dtmfSender:Lorg/hmwebrtc/DtmfSender;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/DtmfSender;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/RtpSender;->cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lorg/hmwebrtc/RtpSender;->ownsTrack:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/hmwebrtc/MediaStreamTrack;->dispose()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 23
    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/JniCommon;->nativeReleaseRef(J)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 30
    .line 31
    return-void
.end method

.method public dtmf()Lorg/hmwebrtc/DtmfSender;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpSender;->dtmfSender:Lorg/hmwebrtc/DtmfSender;

    .line 2
    .line 3
    return-object v0
.end method

.method getNativeRtpSender()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public getParameters()Lorg/hmwebrtc/RtpParameters;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/hmwebrtc/RtpSender;->nativeGetParameters(J)Lorg/hmwebrtc/RtpParameters;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getStreams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/hmwebrtc/RtpSender;->nativeGetStreams(J)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/hmwebrtc/RtpSender;->nativeGetId(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public requestEncoderSendKeyFrame()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/hmwebrtc/RtpSender;->nativeRequestEncoderSendKeyFrame(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFrameEncryptor(Lorg/hmwebrtc/FrameEncryptor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-interface {p1}, Lorg/hmwebrtc/FrameEncryptor;->getNativeFrameEncryptor()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v0, v1, v2, v3}, Lorg/hmwebrtc/RtpSender;->nativeSetFrameEncryptor(JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setParameters(Lorg/hmwebrtc/RtpParameters;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lorg/hmwebrtc/RtpSender;->nativeSetParameters(JLorg/hmwebrtc/RtpParameters;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public setStreams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lorg/hmwebrtc/RtpSender;->nativeSetStreams(JLjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTrack(Lorg/hmwebrtc/MediaStreamTrack;Z)Z
    .locals 4
    .param p1    # Lorg/hmwebrtc/MediaStreamTrack;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/RtpSender;->checkRtpSenderExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/RtpSender;->nativeRtpSender:J

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/hmwebrtc/RtpSender;->nativeSetTrack(JJ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/RtpSender;->cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-boolean v1, p0, Lorg/hmwebrtc/RtpSender;->ownsTrack:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/hmwebrtc/MediaStreamTrack;->dispose()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iput-object p1, p0, Lorg/hmwebrtc/RtpSender;->cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;

    .line 35
    .line 36
    iput-boolean p2, p0, Lorg/hmwebrtc/RtpSender;->ownsTrack:Z

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public track()Lorg/hmwebrtc/MediaStreamTrack;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpSender;->cachedTrack:Lorg/hmwebrtc/MediaStreamTrack;

    .line 2
    .line 3
    return-object v0
.end method
