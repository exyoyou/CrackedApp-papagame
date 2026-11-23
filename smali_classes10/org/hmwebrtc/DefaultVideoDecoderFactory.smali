.class public Lorg/hmwebrtc/DefaultVideoDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoderFactory;


# instance fields
.field private final hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

.field private final platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p3    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 7
    new-instance v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/hmwebrtc/HardwareVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 8
    new-instance v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 3
    new-instance v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/HardwareVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;)V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 4
    new-instance v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;)V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    return-void
.end method

.method constructor <init>(Lorg/hmwebrtc/VideoDecoderFactory;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    return-void
.end method


# virtual methods
.method public createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/hmwebrtc/VideoDecoderFactory;->createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lorg/hmwebrtc/VideoDecoderFactory;->createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, p1}, Lorg/hmwebrtc/VideoDecoderFactory;->createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance p1, Lorg/hmwebrtc/VideoDecoderFallback;

    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Lorg/hmwebrtc/VideoDecoderFallback;-><init>(Lorg/hmwebrtc/VideoDecoder;Lorg/hmwebrtc/VideoDecoder;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object v1, v0

    .line 37
    :goto_0
    return-object v1
.end method

.method public getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 7
    .line 8
    invoke-interface {v1}, Lorg/hmwebrtc/VideoDecoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

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
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/hmwebrtc/VideoDecoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

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
    iget-object v1, p0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lorg/hmwebrtc/VideoDecoderFactory;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Lorg/hmwebrtc/VideoDecoderFactory;->getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v1, "DefaultVideoDecoderFactory"

    .line 54
    .line 55
    const-string v2, "can not get any supported Codec Infos"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 71
    .line 72
    return-object v0
.end method
