.class public Lcom/haima/hmcp/input/sender/RtcDatachannelSender;
.super Lcom/haima/hmcp/input/sender/AbsHMInputSender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtcDatachannelSender"


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/input/sender/AbsHMInputSender;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 1
    const-string v0, "RtcDatachannelSender"

    .line 2
    .line 3
    const-string v1, "connect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public disConnected()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getStreamModel()Lcom/haima/hmcp/listeners/IStreamModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->getRtcPlayer()Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->isConnected()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_0
    return v2
.end method

.method public sendMessage(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sendMessage msg:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",usDiscardable:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "RtcDatachannelSender"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "UTF-8"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendARMDCEventByDataType([BZ)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method
