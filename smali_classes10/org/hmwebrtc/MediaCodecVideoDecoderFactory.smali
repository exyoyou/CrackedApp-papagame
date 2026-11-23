.class public Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoderFactory"

.field private static forceH264:Z

.field private static forceVP8:Z

.field private static supportH265:Z


# instance fields
.field private final cachedSupportedCodecInfos:Ljava/util/List;
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

.field private codecCached:Z

.field protected isPlatform:Z

.field private final mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

.field private final mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

.field private renderView:Ljava/lang/Object;

.field private rotationDegree:I

.field private final sharedContext:Lorg/hmwebrtc/EglBase$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/hmwebrtc/Predicate;Lorg/hmwebrtc/EglBase$Context;)V
    .locals 10
    .param p3    # Lorg/hmwebrtc/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Lorg/hmwebrtc/EglBase$Context;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 9
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

    iput-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

    new-array v0, v9, [Lorg/hmwebrtc/VideoCodecMimeType;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    .line 10
    iput-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->renderView:Ljava/lang/Object;

    .line 12
    iput p2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->rotationDegree:I

    .line 13
    iput-object p4, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 14
    iput-object p3, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->cachedSupportedCodecInfos:Ljava/util/List;

    .line 16
    iput-boolean v2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecCached:Z

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/Predicate;)V
    .locals 10
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/hmwebrtc/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/EglBase$Context;",
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
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

    iput-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

    new-array v0, v9, [Lorg/hmwebrtc/VideoCodecMimeType;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    .line 3
    iput-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 5
    iput-object p2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->cachedSupportedCodecInfos:Ljava/util/List;

    .line 7
    iput-boolean v2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecCached:Z

    return-void
.end method

.method private findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-string v3, " info.getName():"

    .line 8
    .line 9
    const-string v4, "findCodecForType: "

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "MediaCodecVideoDecoderFactory"

    .line 13
    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v2

    .line 22
    const-string v7, "Cannot retrieve decoder codec info"

    .line 23
    .line 24
    invoke-static {v6, v7, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-direct {p0, v5, p1}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v6, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v5

    .line 71
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Landroid/media/MediaCodecList;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    goto :goto_4

    .line 85
    :catch_1
    move-exception v1

    .line 86
    const-string v2, "Runtime exception when retrieving codec infos"

    .line 87
    .line 88
    invoke-static {v6, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catch_2
    move-exception v1

    .line 93
    const-string v2, "Security exception when retrieving codec infos"

    .line 94
    .line 95
    invoke-static {v6, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_3
    move-exception v1

    .line 100
    const-string v2, "Cannot retrieve decoder codec infos"

    .line 101
    .line 102
    invoke-static {v6, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    move-object v1, v5

    .line 106
    :goto_4
    if-eqz v1, :cond_5

    .line 107
    .line 108
    array-length v2, v1

    .line 109
    :goto_5
    if-ge v0, v2, :cond_5

    .line 110
    .line 111
    aget-object v7, v1, v0

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_3
    invoke-direct {p0, v7, p1}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v6, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object v7

    .line 157
    :cond_4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    return-object v5
.end method

.method public static forceMatchH264(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceH264:Z

    .line 2
    .line 3
    invoke-static {p0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->setForceHmH264Decoder(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static forceMatchVP8(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceVP8:Z

    .line 2
    .line 3
    invoke-static {p0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->setForceHmVp8Decoder(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getSupportMimeTypes()[Lorg/hmwebrtc/VideoCodecMimeType;
    .locals 3

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceVP8:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 8
    .line 9
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceH264:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-array v0, v2, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 19
    .line 20
    sget-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->supportH265:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mIncludeH265:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->mNormal:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 33
    .line 34
    :goto_0
    return-object v0
.end method

.method private isCodecAllowed(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecAllowedPredicate:Lorg/hmwebrtc/Predicate;

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

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const-string v1, "OMX.qcom."

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z
    .locals 5

    .line 1
    const-string v0, "MediaCodecVideoDecoderFactory"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Lorg/hmwebrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/hmwebrtc/VideoCodecMimeType;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "Not codecSupportsType info.getName(): "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, " type: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p2}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v2, v3}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-nez p2, :cond_1

    .line 63
    .line 64
    return v1

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isCodecAllowed(Landroid/media/MediaCodecInfo;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :catch_0
    move-exception v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "isSupportedCodec exception: "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, ", type: "

    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ", exception: "

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v1
.end method

.method public static turnOnH265(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->supportH265:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "createDecoder codecType.getName():"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "isPlatform: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isPlatform:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "MediaCodecVideoDecoderFactory"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isPlatform:Z

    .line 42
    .line 43
    iget-object v2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 44
    .line 45
    iget-object v3, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->renderView:Ljava/lang/Object;

    .line 46
    .line 47
    iget v4, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->rotationDegree:I

    .line 48
    .line 49
    invoke-static {v0, v1, v2, v3, v4}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->createDecoder(Ljava/lang/String;ZLorg/hmwebrtc/EglBase$Context;Ljava/lang/Object;I)Lorg/hmwebrtc/VideoDecoder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Lorg/hmwebrtc/VideoDecoder;->getImplementationName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lorg/hmwebrtc/VideoCodecMimeType;->fromSdpCodecName(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v7, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    iget-object v1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->renderView:Ljava/lang/Object;

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    new-instance v9, Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 92
    .line 93
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 94
    .line 95
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1, v8}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget-object v6, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 111
    .line 112
    move-object v1, v9

    .line 113
    move-object v4, p1

    .line 114
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Lorg/hmwebrtc/EglBase$Context;)V

    .line 115
    .line 116
    .line 117
    return-object v9

    .line 118
    :cond_2
    new-instance v9, Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 119
    .line 120
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 121
    .line 122
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1, v8}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget-object v6, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 138
    .line 139
    move-object v1, v9

    .line 140
    move-object v4, p1

    .line 141
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Lorg/hmwebrtc/EglBase$Context;)V

    .line 142
    .line 143
    .line 144
    new-instance v10, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 145
    .line 146
    new-instance v2, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;

    .line 147
    .line 148
    invoke-direct {v2}, Lorg/hmwebrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {}, Lorg/hmwebrtc/MediaCodecUtils;->getDecodeColorFormates()[I

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1, v8}, Lorg/hmwebrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    iget-object v6, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->renderView:Ljava/lang/Object;

    .line 168
    .line 169
    iget v7, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->rotationDegree:I

    .line 170
    .line 171
    move-object v1, v10

    .line 172
    move-object v4, p1

    .line 173
    invoke-direct/range {v1 .. v7}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;-><init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;ILjava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lorg/hmwebrtc/CompositeVideoDecoder;

    .line 177
    .line 178
    iget-object v1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->renderView:Ljava/lang/Object;

    .line 179
    .line 180
    invoke-direct {p1, v9, v10, v1}, Lorg/hmwebrtc/CompositeVideoDecoder;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    return-object p1

    .line 184
    :catch_0
    move-exception p1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v2, "createDecoder Exception: "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string v1, "throwExceptionMsg"

    .line 207
    .line 208
    invoke-static {v1, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isPlatform:Z

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->getCachedVideoCodecs(Z)[Lorg/hmwebrtc/VideoCodecInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-boolean v0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceH264:Z

    .line 11
    .line 12
    const-string v1, "MediaCodecVideoDecoderFactory"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->cachedSupportedCodecInfos:Ljava/util/List;

    .line 17
    .line 18
    iget-boolean v2, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecCached:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "return cached SupportedCodecs, codec list size: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-direct {p0}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->getSupportMimeTypes()[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    array-length v3, v2

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_0
    const/4 v6, 0x1

    .line 72
    if-ge v5, v3, :cond_5

    .line 73
    .line 74
    aget-object v7, v2, v5

    .line 75
    .line 76
    invoke-direct {p0, v7}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lorg/hmwebrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v8, "Can\'t find codec for type: "

    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v1, v6}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v7}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    sget-object v10, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 108
    .line 109
    if-ne v7, v10, :cond_4

    .line 110
    .line 111
    invoke-direct {p0, v8}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_4

    .line 116
    .line 117
    new-instance v10, Lorg/hmwebrtc/VideoCodecInfo;

    .line 118
    .line 119
    invoke-static {v7, v6}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-direct {v10, v9, v11}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_4
    new-instance v10, Lorg/hmwebrtc/VideoCodecInfo;

    .line 130
    .line 131
    invoke-static {v7, v6}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-direct {v10, v9, v6}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v10, "getSupportedCodecs: "

    .line 147
    .line 148
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v8, ",type name:"

    .line 159
    .line 160
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v1, v6}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v6, Lorg/hmwebrtc/VideoCodecInfo;

    .line 174
    .line 175
    invoke-static {v7, v4}, Lorg/hmwebrtc/MediaCodecUtils;->getCodecProperties(Lorg/hmwebrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-direct {v6, v9, v7}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    sget-boolean v1, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceH264:Z

    .line 189
    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    iput-boolean v6, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->codecCached:Z

    .line 193
    .line 194
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 199
    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 205
    .line 206
    return-object v0
.end method
