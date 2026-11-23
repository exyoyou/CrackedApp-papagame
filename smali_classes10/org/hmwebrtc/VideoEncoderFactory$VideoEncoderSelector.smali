.class public interface abstract Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/VideoEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoEncoderSelector"
.end annotation


# virtual methods
.method public abstract onAvailableBitrate(I)Lorg/hmwebrtc/VideoCodecInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "VideoEncoderSelector"
    .end annotation
.end method

.method public abstract onCurrentEncoder(Lorg/hmwebrtc/VideoCodecInfo;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "VideoEncoderSelector"
    .end annotation
.end method

.method public abstract onEncoderBroken()Lorg/hmwebrtc/VideoCodecInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "VideoEncoderSelector"
    .end annotation
.end method
