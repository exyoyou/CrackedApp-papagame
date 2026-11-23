.class public interface abstract Lorg/hmwebrtc/VideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/VideoDecoder$Callback;,
        Lorg/hmwebrtc/VideoDecoder$DecodeInfo;,
        Lorg/hmwebrtc/VideoDecoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract createNativeVideoDecoder()J
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getDecodedHeight()I
.end method

.method public abstract getDecodedWidth()I
.end method

.method public abstract getImplementationName()Ljava/lang/String;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method

.method public abstract release()Lorg/hmwebrtc/VideoCodecStatus;
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation
.end method
