.class public abstract Lorg/hmwebrtc/WrappedNativeVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappedNativeVideoDecoder"


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


# virtual methods
.method public abstract createNativeVideoDecoder()J
.end method

.method public final decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 0

    .line 1
    const-string p1, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string p2, "decode Not implemented."

    .line 4
    .line 5
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 9
    .line 10
    return-object p1
.end method

.method public getDecodedHeight()I
    .locals 2

    .line 1
    const-string v0, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string v1, "getDecodedHeight Not implemented."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getDecodedWidth()I
    .locals 2

    .line 1
    const-string v0, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string v1, "getDecodedWidth Not implemented."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final getImplementationName()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string v1, "getImplementationName Not implemented."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Haima test"

    .line 9
    .line 10
    return-object v0
.end method

.method public final initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 0

    .line 1
    const-string p1, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string p2, "initDecode Not implemented."

    .line 4
    .line 5
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 9
    .line 10
    return-object p1
.end method

.method public final release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2

    .line 1
    const-string v0, "WrappedNativeVideoDecoder"

    .line 2
    .line 3
    const-string v1, "release Not implemented."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 9
    .line 10
    return-object v0
.end method
