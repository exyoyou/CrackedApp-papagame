.class public Lorg/webrtc/haima/HmRtcCommandChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmTransDevice$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "HmRtcCommandChannel"


# instance fields
.field private mListener:Lorg/webrtc/haima/HmRtcCommandListener;

.field private mTransDevice:Lorg/webrtc/haima/HmTransDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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


# virtual methods
.method public init(Lorg/webrtc/haima/HmTransDevice;Lorg/webrtc/haima/HmRtcCommandListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcCommandChannel;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mTransDevice:Lorg/webrtc/haima/HmTransDevice;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_2
    :goto_0
    sget-object p1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p2, "init invaild params "

    .line 22
    .line 23
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mTransDevice:Lorg/webrtc/haima/HmTransDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onMessage([BZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lorg/webrtc/haima/HmRtcCommandListener;->onReceiveBinary([B)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p2, Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "UTF-8"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 25
    .line 26
    invoke-interface {p1, p2}, Lorg/webrtc/haima/HmRtcCommandListener;->onReceiveText(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object p1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "onMessage invalid data"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :goto_0
    sget-object p2, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "onMessage ex ="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mTransDevice:Lorg/webrtc/haima/HmTransDevice;

    .line 10
    .line 11
    return-void
.end method

.method public sendData([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mTransDevice:Lorg/webrtc/haima/HmTransDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1, p1, v0}, Lorg/webrtc/haima/HmTransDevice;->sendData([BI)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    sget-object p1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "sendData failed. transdevice is null "

    .line 14
    .line 15
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    sget-object v1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "sendData failed  ex: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return v0
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcCommandChannel;->mTransDevice:Lorg/webrtc/haima/HmTransDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1, p1, v0}, Lorg/webrtc/haima/HmTransDevice;->sendText(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    sget-object p1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "sendText failed. transdevice is null "

    .line 14
    .line 15
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    sget-object v1, Lorg/webrtc/haima/HmRtcCommandChannel;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "sendText failed  ex: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return v0
.end method
