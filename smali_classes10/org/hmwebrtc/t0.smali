.class public final synthetic Lorg/hmwebrtc/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/hmwebrtc/VideoEncoderFactory;)Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/hmwebrtc/VideoEncoderFactory;)[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/hmwebrtc/VideoEncoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
