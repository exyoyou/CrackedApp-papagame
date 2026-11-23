.class public interface abstract Lorg/hmwebrtc/VideoEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;
    }
.end annotation


# virtual methods
.method public abstract createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getEncoderSelector()Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getImplementations()[Lorg/hmwebrtc/VideoCodecInfo;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method
