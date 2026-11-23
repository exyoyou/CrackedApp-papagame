.class Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;
.super Lorg/hmwebrtc/VideoCodecInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/MediaCodecSupportedCodecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompleteVideoCodecInfo"
.end annotation


# instance fields
.field private colorFormats:[I

.field private fullName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->fullName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->colorFormats:[I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getColorFormats()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->colorFormats:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/MediaCodecSupportedCodecs$CompleteVideoCodecInfo;->fullName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
