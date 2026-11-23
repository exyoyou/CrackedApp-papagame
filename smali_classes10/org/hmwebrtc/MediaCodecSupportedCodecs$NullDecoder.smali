.class Lorg/hmwebrtc/MediaCodecSupportedCodecs$NullDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/MediaCodecSupportedCodecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullDecoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/MediaCodecSupportedCodecs$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/hmwebrtc/MediaCodecSupportedCodecs$NullDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createNativeVideoDecoder()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/p0;->a(Lorg/hmwebrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 0

    .line 1
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    return-object p1
.end method

.method public getDecodedHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDecodedWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 0

    .line 1
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    return-object p1
.end method

.method public release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    return-object v0
.end method
