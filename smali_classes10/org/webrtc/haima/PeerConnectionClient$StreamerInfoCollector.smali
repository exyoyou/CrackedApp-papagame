.class Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/DataChannel$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamerInfoCollector"
.end annotation


# instance fields
.field private mInfoDataChannel:Lorg/hmwebrtc/DataChannel;

.field streamerAudioInfo:Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;

.field weaklyNetInfo:Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/DataChannel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->streamerAudioInfo:Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;

    .line 10
    .line 11
    new-instance v0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->weaklyNetInfo:Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->mInfoDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private parseInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "info_chn"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "\\|"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->weaklyNetInfo:Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->parseStreamerWeaklyNetInfo([Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->streamerAudioInfo:Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->parseStreamerAudioInfo([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->streamerAudioInfo:Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->getStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWeaklyNetStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->weaklyNetInfo:Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->getStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onBufferedAmountChange(J)V
    .locals 0

    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    iget-object p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "UTF-8"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->parseInfo(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    const-string p1, "info_chn:"

    .line 45
    .line 46
    const-string v0, "DataChannel data is null!"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onStateChange()V
    .locals 0

    return-void
.end method

.method public synthetic onWritableState(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/g;->a(Lorg/hmwebrtc/DataChannel$Observer;Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->mInfoDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->unregisterObserver()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->mInfoDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->dispose()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
