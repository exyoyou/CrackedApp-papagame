.class public interface abstract Lorg/hmwebrtc/VideoDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method
