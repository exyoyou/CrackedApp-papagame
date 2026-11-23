.class public interface abstract Lorg/hmwebrtc/VideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/VideoEncoder$Callback;,
        Lorg/hmwebrtc/VideoEncoder$RateControlParameters;,
        Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;,
        Lorg/hmwebrtc/VideoEncoder$ScalingSettings;,
        Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;,
        Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfoAV1;,
        Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfoH264;,
        Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfoVP9;,
        Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfoVP8;,
        Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;,
        Lorg/hmwebrtc/VideoEncoder$EncodeInfo;,
        Lorg/hmwebrtc/VideoEncoder$Capabilities;,
        Lorg/hmwebrtc/VideoEncoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract createNativeVideoEncoder()J
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract encode(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoEncoder$EncodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getImplementationName()Ljava/lang/String;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getResolutionBitrateLimits()[Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getScalingSettings()Lorg/hmwebrtc/VideoEncoder$ScalingSettings;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract initEncode(Lorg/hmwebrtc/VideoEncoder$Settings;Lorg/hmwebrtc/VideoEncoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract isHardwareEncoder()Z
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract release()Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract setRateAllocation(Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;I)Lorg/hmwebrtc/VideoCodecStatus;
.end method

.method public abstract setRates(Lorg/hmwebrtc/VideoEncoder$RateControlParameters;)Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method
