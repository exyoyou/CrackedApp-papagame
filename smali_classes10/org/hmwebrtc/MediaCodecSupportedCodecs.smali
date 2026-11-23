.class public Lorg/hmwebrtc/MediaCodecSupportedCodecs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/MediaCodecSupportedCodecs$NullDecoder;,
        Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@SupportedCodecs"

.field private static final cachedHardwareSupportedCodecInfos:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedPlatformSupportedCodecInfos:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch; = null

.field private static final defaultHardwareAllowedPredicate:Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultPlatformAllowedPredicate:Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static enable:Z = false

.field private static exceptionString:Ljava/lang/String; = null

.field private static getSupportedCodecsFinished:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static getSupportedCodecsHandler:Landroid/os/Handler; = null

.field private static iterationElapsed:J = 0x0L

.field public static timeout:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->defaultPlatformAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 7
    .line 8
    new-instance v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->defaultHardwareAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100([Lorg/hmwebrtc/VideoCodecMimeType;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecs([Lorg/hmwebrtc/VideoCodecMimeType;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->reportCapabilities()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createDecoder(Ljava/lang/String;ZLorg/hmwebrtc/EglBase$Context;Ljava/lang/Object;I)Lorg/hmwebrtc/VideoDecoder;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-boolean v1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->enable:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$NullDecoder;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$NullDecoder;-><init>(Lorg/hmwebrtc/MediaCodecSupportedCodecs$1;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->findVideoCodecForType(Ljava/lang/String;Z)Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-static {p0}, Lorg/hmwebrtc/VideoCodecMimeType;->valueOf(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    new-instance p3, Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 26
    .line 27
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 28
    .line 29
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getFullName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getColorFormats()[I

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p4, p1}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([I[I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    move-object v1, p3

    .line 49
    move-object v4, p0

    .line 50
    move-object v6, p2

    .line 51
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Lorg/hmwebrtc/EglBase$Context;)V

    .line 52
    .line 53
    .line 54
    return-object p3

    .line 55
    :cond_2
    new-instance v8, Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 56
    .line 57
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 58
    .line 59
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getFullName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getColorFormats()[I

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v1, v4}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([I[I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    move-object v1, v8

    .line 79
    move-object v4, p0

    .line 80
    move-object v6, p2

    .line 81
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Lorg/hmwebrtc/EglBase$Context;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 85
    .line 86
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 87
    .line 88
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getFullName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getColorFormats()[I

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v1, p1}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([I[I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    move-object v1, p2

    .line 112
    move-object v4, p0

    .line 113
    move-object v6, p3

    .line 114
    move v7, p4

    .line 115
    invoke-direct/range {v1 .. v7}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;ILjava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Lorg/hmwebrtc/CompositeVideoDecoder;

    .line 119
    .line 120
    invoke-direct {p0, v8, p2, p3}, Lorg/hmwebrtc/CompositeVideoDecoder;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string p2, "createDecoder Exception: "

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-string p1, "throwExceptionMsg"

    .line 147
    .line 148
    invoke-static {p1, p0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v0
.end method

.method private static findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;Z)Landroid/media/MediaCodecInfo;
    .locals 3
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
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    nop

    .line 15
    :goto_1
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-static {v2, p0, p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-object v2
.end method

.method private static findVideoCodecForType(Ljava/lang/String;Z)Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    sget v2, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->timeout:I

    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 22
    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lorg/hmwebrtc/VideoCodecInfo;

    .line 38
    .line 39
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "findVideoCodecForType:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ",is platform:"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    check-cast v2, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_3
    return-object v0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "findVideoCodecForType: countDownLatch.await Exception:"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public static getCachedVideoCodecs(Z)[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->enable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "return cached platform supported codecs:"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    new-array p0, p0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 41
    .line 42
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v0, "return cached hardware supported codecs:"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    new-array p0, p0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 73
    .line 74
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_2
    const/4 p0, 0x0

    .line 82
    new-array p0, p0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 83
    .line 84
    return-object p0
.end method

.method private static getSupportedCodecs([Lorg/hmwebrtc/VideoCodecMimeType;Z)V
    .locals 13

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    array-length v2, p0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    const/4 v5, 0x1

    .line 16
    if-ge v4, v2, :cond_5

    .line 17
    .line 18
    aget-object v6, p0, v4

    .line 19
    .line 20
    :try_start_0
    invoke-static {v6, p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;Z)Landroid/media/MediaCodecInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v10, "getSupportedCodecs: "

    .line 38
    .line 39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, ",type name:"

    .line 50
    .line 51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v10, ",is platform:"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v9, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v7, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    iget-object v10, v10, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 83
    .line 84
    array-length v11, v10

    .line 85
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sget-object v11, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 90
    .line 91
    if-ne v6, v11, :cond_3

    .line 92
    .line 93
    invoke-static {v7}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    sget-object v7, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 102
    .line 103
    new-instance v11, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 104
    .line 105
    invoke-static {v6, v5}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-direct {v11, v8, v5, v12, v10}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    sget-object v7, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 121
    .line 122
    new-instance v11, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 123
    .line 124
    invoke-static {v6, v5}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-direct {v11, v8, v5, v12, v10}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 139
    .line 140
    sget-object v5, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 141
    .line 142
    new-instance v7, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 143
    .line 144
    invoke-static {v6, v3}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-direct {v7, v8, v6, v9, v10}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    sget-object v5, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 160
    .line 161
    new-instance v7, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 162
    .line 163
    invoke-static {v6, v3}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-direct {v7, v8, v6, v9, v10}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catch_0
    move-exception v5

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v7, "getSupportedCodecs Exception:"

    .line 185
    .line 186
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    new-instance v6, Ljava/lang/StringBuffer;

    .line 197
    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    sput-object v5, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->exceptionString:Ljava/lang/String;

    .line 225
    .line 226
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide p0

    .line 234
    sub-long/2addr p0, v0

    .line 235
    sput-wide p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->iterationElapsed:J

    .line 236
    .line 237
    sget-object p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    .line 239
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    .line 241
    .line 242
    sget-object p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 245
    .line 246
    .line 247
    :cond_6
    :goto_3
    return-void
.end method

.method private static isCodecAllowed(Landroid/media/MediaCodecInfo;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    sget-object p1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->defaultPlatformAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {p1, p0}, Lorg/hmwebrtc/Predicate;->test(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    sget-object p1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->defaultHardwareAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    return v0

    .line 19
    :cond_2
    invoke-interface {p1, p0}, Lorg/hmwebrtc/Predicate;->test(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method private static isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const-string v1, "OMX.qcom."

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    const/16 v1, 0x17

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    const-string v0, "OMX.Exynos."

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method private static isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lorg/hmwebrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    invoke-static {p0, p2}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->isCodecAllowed(Landroid/media/MediaCodecInfo;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :catch_0
    return v0
.end method

.method public static postReportTask()V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->enable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static reportCapabilities()V
    .locals 9

    .line 1
    sget-object v0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->exceptionString:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x3507

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, ","

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    sget-object v3, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedHardwareSupportedCodecInfos:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lorg/hmwebrtc/VideoCodecInfo;

    .line 53
    .line 54
    check-cast v4, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getFullName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getColorFormats()[I

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    array-length v6, v4

    .line 71
    :goto_0
    if-ge v5, v6, :cond_1

    .line 72
    .line 73
    aget v7, v4, v5

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    sget-object v3, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->cachedPlatformSupportedCodecInfos:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lorg/hmwebrtc/VideoCodecInfo;

    .line 101
    .line 102
    check-cast v4, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getFullName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->getColorFormats()[I

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    array-length v6, v4

    .line 119
    const/4 v7, 0x0

    .line 120
    :goto_1
    if-ge v7, v6, :cond_3

    .line 121
    .line 122
    aget v8, v4, v7

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ",iteration time elapsed:"

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    sget-wide v3, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->iterationElapsed:J

    .line 151
    .line 152
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public static startGettingSupportedCodecs(ZZZZIZ)V
    .locals 0

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p3, :cond_1

    .line 5
    .line 6
    return-void

    .line 7
    :cond_1
    sget-boolean p3, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->enable:Z

    .line 8
    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    return-void

    .line 12
    :cond_2
    sput p4, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->timeout:I

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    const/4 p4, 0x1

    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    new-array p0, p4, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 19
    .line 20
    sget-object p1, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 21
    .line 22
    aput-object p1, p0, p3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    if-eqz p1, :cond_4

    .line 26
    .line 27
    new-array p0, p4, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 28
    .line 29
    sget-object p1, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 30
    .line 31
    aput-object p1, p0, p3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    const/4 p0, 0x2

    .line 35
    const/4 p1, 0x3

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    const/4 p2, 0x4

    .line 39
    new-array p2, p2, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 40
    .line 41
    sget-object p5, Lorg/hmwebrtc/VideoCodecMimeType;->H265:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 42
    .line 43
    aput-object p5, p2, p3

    .line 44
    .line 45
    sget-object p5, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 46
    .line 47
    aput-object p5, p2, p4

    .line 48
    .line 49
    sget-object p5, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 50
    .line 51
    aput-object p5, p2, p0

    .line 52
    .line 53
    sget-object p0, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 54
    .line 55
    aput-object p0, p2, p1

    .line 56
    .line 57
    move-object p0, p2

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    new-array p1, p1, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 60
    .line 61
    sget-object p2, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 62
    .line 63
    aput-object p2, p1, p3

    .line 64
    .line 65
    sget-object p2, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 66
    .line 67
    aput-object p2, p1, p4

    .line 68
    .line 69
    sget-object p2, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 70
    .line 71
    aput-object p2, p1, p0

    .line 72
    .line 73
    move-object p0, p1

    .line 74
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p2, "startGettingSupportedCodecs, configured timeout:"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    sget p2, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->timeout:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/os/HandlerThread;

    .line 90
    .line 91
    const-string p2, "startGettingSupportedCodecs"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lorg/hmwebrtc/MediaCodecSupportedCodecs$3;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p2, p1}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$3;-><init>(Landroid/os/Looper;)V

    .line 106
    .line 107
    .line 108
    sput-object p2, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsHandler:Landroid/os/Handler;

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    invoke-virtual {p1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    sget-object p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getSupportedCodecsHandler:Landroid/os/Handler;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    .line 124
    .line 125
    sput-boolean p4, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->enable:Z

    .line 126
    .line 127
    return-void
.end method
