.class public Lorg/hmwebrtc/DefaultVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoEncoderFactory;


# instance fields
.field private final hardwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

.field private final softwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 3
    new-instance v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;ZZ)V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    return-void
.end method

.method constructor <init>(Lorg/hmwebrtc/VideoEncoderFactory;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 6
    iput-object p1, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    return-void
.end method


# virtual methods
.method public createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/hmwebrtc/VideoEncoderFactory;->createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lorg/hmwebrtc/VideoEncoderFactory;->createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/hmwebrtc/VideoEncoderFallback;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Lorg/hmwebrtc/VideoEncoderFallback;-><init>(Lorg/hmwebrtc/VideoEncoder;Lorg/hmwebrtc/VideoEncoder;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    :cond_1
    return-object v0
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
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 7
    .line 8
    invoke-interface {v1}, Lorg/hmwebrtc/VideoEncoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lorg/hmwebrtc/VideoEncoderFactory;

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/hmwebrtc/VideoEncoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 43
    .line 44
    return-object v0
.end method
