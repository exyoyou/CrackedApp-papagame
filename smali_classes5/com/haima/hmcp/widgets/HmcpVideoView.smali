.class public Lcom/haima/hmcp/widgets/HmcpVideoView;
.super Lcom/haima/hmcp/widgets/BaseVideoView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/widgets/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onlyRtmpStream()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-class p1, Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "\u63a5\u53e3\u672a\u5f00\u653e"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public disconnectAccProxy()V
    .locals 2

    .line 1
    const-class v0, Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\u63a5\u53e3\u672a\u5f00\u653e"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected getStreamType(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getStreamType(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/BaseVideoView;->hmcpVideoViewInterface:Lcom/haima/hmcp/IHmcpVideoView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;->isX86Game()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/HmcpVideoView;->onlyRtmpStream()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string p1, "RTMP"

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    invoke-super {p0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getStreamType(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public hideKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/BaseVideoView;->hmcpVideoViewInterface:Lcom/haima/hmcp/IHmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;->hideKeyboard()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sendWsMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/BaseVideoView;->hmcpVideoViewInterface:Lcom/haima/hmcp/IHmcpVideoView;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;->sendWsMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 0

    return-void
.end method

.method public setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
    .locals 0

    return-void
.end method

.method public setSeiListener(Lcom/haima/hmcp/listeners/ISeiListener;)V
    .locals 0

    return-void
.end method

.method public switchMobileNetworkTransport(Z)V
    .locals 1

    .line 1
    const-class p1, Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "\u63a5\u53e3\u672a\u5f00\u653e"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
