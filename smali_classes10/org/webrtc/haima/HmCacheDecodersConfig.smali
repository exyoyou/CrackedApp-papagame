.class public Lorg/webrtc/haima/HmCacheDecodersConfig;
.super Lorg/webrtc/haima/HmRtcSdkCloudCfg;
.source "SourceFile"


# static fields
.field private static final TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field private timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    iput p1, p0, Lorg/webrtc/haima/HmCacheDecodersConfig;->timeout:I

    .line 8
    .line 9
    iget-object p2, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 10
    .line 11
    const-string v0, "timeout"

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lorg/webrtc/haima/HmCacheDecodersConfig;->timeout:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmCacheDecodersConfig;->timeout:I

    .line 2
    .line 3
    return v0
.end method
