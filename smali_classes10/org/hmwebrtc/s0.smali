.class public final synthetic Lorg/hmwebrtc/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/hmwebrtc/VideoEncoder;)J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static b(Lorg/hmwebrtc/VideoEncoder;)[Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;

    return-object p0
.end method

.method public static c(Lorg/hmwebrtc/VideoEncoder;)Z
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lorg/hmwebrtc/VideoEncoder;Lorg/hmwebrtc/VideoEncoder$RateControlParameters;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p1, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    iget-object p1, p1, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->bitrate:Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;

    .line 9
    .line 10
    invoke-interface {p0, p1, v0}, Lorg/hmwebrtc/VideoEncoder;->setRateAllocation(Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;I)Lorg/hmwebrtc/VideoCodecStatus;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
