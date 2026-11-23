.class public Lorg/hmwebrtc/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoEncoderFactory;


# static fields
.field private static final H264_HW_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"

.field private static enableEncoder:Z

.field private static supportH265:Z


# instance fields
.field private final codecAllowedPredicate:Lorg/hmwebrtc/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final enableH264HighProfile:Z

.field private final enableIntelVp8Encoder:Z

.field private final mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

.field private final mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

.field private final sharedContext:Lorg/hmwebrtc/EglBase14$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "Nexus 7"

    .line 2
    .line 3
    const-string v1, "Nexus 4"

    .line 4
    .line 5
    const-string v2, "SAMSUNG-SGH-I337"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableEncoder:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;ZZLorg/hmwebrtc/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;ZZLorg/hmwebrtc/Predicate;)V
    .locals 10
    .param p4    # Lorg/hmwebrtc/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/EglBase$Context;",
            "ZZ",
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 3
    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->H265:Lorg/hmwebrtc/VideoCodecMimeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v4, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    const/4 v5, 0x2

    aput-object v4, v0, v5

    sget-object v6, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    const/4 v7, 0x3

    aput-object v6, v0, v7

    sget-object v8, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    const/4 v9, 0x4

    aput-object v8, v0, v9

    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

    new-array v0, v9, [Lorg/hmwebrtc/VideoCodecMimeType;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    .line 4
    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 5
    instance-of v0, p1, Lorg/hmwebrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/hmwebrtc/EglBase14$Context;

    iput-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    goto :goto_0

    :cond_0
    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "No shared EglBase.Context.  Encoders will not use texture mode."

    .line 7
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 9
    :goto_0
    iput-boolean p2, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 10
    iput-boolean p3, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 11
    iput-object p4, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lorg/hmwebrtc/Predicate;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, p1, p2}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;ZZ)V

    return-void
.end method

.method private createBitrateAdjuster(Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/String;)Lorg/hmwebrtc/BitrateAdjuster;
    .locals 1

    .line 1
    const-string v0, "OMX.Exynos."

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    sget-object p2, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    new-instance p1, Lorg/hmwebrtc/DynamicBitrateAdjuster;

    .line 14
    .line 15
    invoke-direct {p1}, Lorg/hmwebrtc/DynamicBitrateAdjuster;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Lorg/hmwebrtc/FramerateBitrateAdjuster;

    .line 20
    .line 21
    invoke-direct {p1}, Lorg/hmwebrtc/FramerateBitrateAdjuster;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    new-instance p1, Lorg/hmwebrtc/BaseBitrateAdjuster;

    .line 26
    .line 27
    invoke-direct {p1}, Lorg/hmwebrtc/BaseBitrateAdjuster;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method private findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    const-string v2, "HardwareVideoEncoderFactory"

    .line 30
    .line 31
    const-string v3, "Cannot retrieve encoder codec info"

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method private getForcedKeyFrameIntervalMs(Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    const-string p1, "OMX.qcom."

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 p2, 0x15

    .line 16
    .line 17
    const/16 v0, 0x3a98

    .line 18
    .line 19
    if-eq p1, p2, :cond_2

    .line 20
    .line 21
    const/16 p2, 0x16

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 p2, 0x17

    .line 27
    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    const/16 p1, 0x4e20

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    if-le p1, p2, :cond_3

    .line 34
    .line 35
    :cond_2
    :goto_0
    return v0

    .line 36
    :cond_3
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private getKeyFrameIntervalSec(Lorg/hmwebrtc/VideoCodecMimeType;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$hmwebrtc$VideoCodecMimeType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "Unsupported VideoCodecMimeType "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/16 p1, 0x14

    .line 49
    .line 50
    return p1

    .line 51
    :cond_2
    :goto_0
    const/16 p1, 0x64

    .line 52
    .line 53
    return p1
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "OMX.Exynos."

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$hmwebrtc$VideoCodecMimeType:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p2, v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p2, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p2, v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    return v0

    .line 29
    :cond_2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_3
    invoke-direct {p0, p1}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "OMX.qcom."

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "OMX.Exynos."

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :goto_0
    const/4 v1, 0x1

    .line 35
    :cond_2
    return v1
.end method

.method private isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 1
    const-string v0, "HardwareVideoEncoderFactory"

    .line 2
    .line 3
    const-string v1, "isHardwareSupportedInCurrentSdkH265 always return true."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "OMX.qcom."

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "OMX.Exynos."

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v1, 0x17

    .line 25
    .line 26
    if-ge v0, v1, :cond_2

    .line 27
    .line 28
    :cond_1
    const-string v0, "OMX.Intel."

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-boolean p1, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    :goto_1
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "OMX.qcom."

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "OMX.Exynos."

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v0, 0x18

    .line 24
    .line 25
    if-lt p1, v0, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method private isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lorg/hmwebrtc/Predicate;->test(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lorg/hmwebrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lorg/hmwebrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v2}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1
.end method

.method public static setEnableEncoder(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableEncoder:Z

    .line 2
    .line 3
    return-void
.end method

.method public static turnOnH265(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->supportH265:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public createEncoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoEncoder;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->fromSdpCodecName(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-direct {p0, v4}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v4}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v5, Lorg/hmwebrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v5, v6}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    sget-object v6, Lorg/hmwebrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v6, v2}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 46
    .line 47
    if-ne v4, v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p1, Lorg/hmwebrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    invoke-static {v4, v7}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v2, v7}, Lorg/hmwebrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget-object v7, p1, Lorg/hmwebrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-static {v4, v8}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {v7, v8}, Lorg/hmwebrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    if-nez v7, :cond_1

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_1
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_2
    new-instance v0, Lorg/hmwebrtc/HardwareVideoEncoder;

    .line 86
    .line 87
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 88
    .line 89
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v7, p1, Lorg/hmwebrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 93
    .line 94
    invoke-direct {p0, v4}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->getKeyFrameIntervalSec(Lorg/hmwebrtc/VideoCodecMimeType;)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-direct {p0, v4, v3}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-direct {p0, v4, v3}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->createBitrateAdjuster(Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/String;)Lorg/hmwebrtc/BitrateAdjuster;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    iget-object v11, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 107
    .line 108
    move-object v1, v0

    .line 109
    invoke-direct/range {v1 .. v11}, Lorg/hmwebrtc/HardwareVideoEncoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILorg/hmwebrtc/BitrateAdjuster;Lorg/hmwebrtc/EglBase14$Context;)V

    .line 110
    .line 111
    .line 112
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
    .locals 10

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->enableEncoder:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-boolean v2, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->supportH265:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 22
    .line 23
    :goto_0
    array-length v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_1
    if-ge v4, v3, :cond_4

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    invoke-direct {p0, v5}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    sget-object v8, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 40
    .line 41
    if-ne v5, v8, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, v6}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    new-instance v8, Lorg/hmwebrtc/VideoCodecInfo;

    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    invoke-static {v5, v9}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-direct {v8, v7, v9}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    new-instance v8, Lorg/hmwebrtc/VideoCodecInfo;

    .line 63
    .line 64
    invoke-static {v5, v1}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-direct {v8, v7, v5}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v8, "getSupportedCodecs: "

    .line 80
    .line 81
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v6, ",type name:"

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v6, "HardwareVideoEncoderFactory"

    .line 104
    .line 105
    invoke-static {v6, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 116
    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 122
    .line 123
    return-object v0
.end method
