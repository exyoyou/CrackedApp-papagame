.class public Lorg/hmwebrtc/SoftwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoEncoderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static supportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/hmwebrtc/VideoCodecInfo;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Lorg/hmwebrtc/H264Utils;->getDefaultH264Params(Z)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "H264"

    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp8Encoder;->nativeIsSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lorg/hmwebrtc/VideoCodecInfo;

    .line 28
    .line 29
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp9Encoder;->nativeIsSupported()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Lorg/hmwebrtc/VideoCodecInfo;

    .line 53
    .line 54
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {}, Lorg/hmwebrtc/LibaomAv1Encoder;->nativeIsSupported()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    new-instance v1, Lorg/hmwebrtc/VideoCodecInfo;

    .line 78
    .line 79
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 107
    .line 108
    return-object v0
.end method


# virtual methods
.method public createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "H264"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lorg/hmwebrtc/LibH264Encoder;

    .line 14
    .line 15
    invoke-direct {p1}, Lorg/hmwebrtc/LibH264Encoder;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp8Encoder;->nativeIsSupported()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance p1, Lorg/hmwebrtc/LibvpxVp8Encoder;

    .line 38
    .line 39
    invoke-direct {p1}, Lorg/hmwebrtc/LibvpxVp8Encoder;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp9Encoder;->nativeIsSupported()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    new-instance p1, Lorg/hmwebrtc/LibvpxVp9Encoder;

    .line 62
    .line 63
    invoke-direct {p1}, Lorg/hmwebrtc/LibvpxVp9Encoder;-><init>()V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_2
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lorg/hmwebrtc/LibaomAv1Encoder;->nativeIsSupported()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    new-instance p1, Lorg/hmwebrtc/LibaomAv1Encoder;

    .line 86
    .line 87
    invoke-direct {p1}, Lorg/hmwebrtc/LibaomAv1Encoder;-><init>()V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_3
    const/4 p1, 0x0

    .line 92
    return-object p1
.end method

.method public synthetic getEncoderSelector()Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/t0;->a(Lorg/hmwebrtc/VideoEncoderFactory;)Lorg/hmwebrtc/VideoEncoderFactory$VideoEncoderSelector;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getImplementations()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/t0;->b(Lorg/hmwebrtc/VideoEncoderFactory;)[Lorg/hmwebrtc/VideoCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;->supportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
