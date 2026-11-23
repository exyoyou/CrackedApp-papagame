.class public Lcom/haima/hmcp/websocket/types/WebSocketOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAutoPingInterval:I

.field private mAutoPingTimeout:I

.field private mAutoPingTimeoutCountMax:I

.field private mHandShakeTimeoutSec:I

.field private mMaskClientFrames:Z

.field private mMaxFramePayloadSize:I

.field private mMaxMessagePayloadSize:I

.field private mReceiveTextMessagesRaw:Z

.field private mReconnectInterval:I

.field private mSocketConnectTimeout:I

.field private mSocketReceiveTimeout:I

.field private mTcpNoDelay:Z

.field private mTlsProtocols:[Ljava/lang/String;

.field private mValidateIncomingUtf8:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    .line 2
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 3
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReceiveTextMessagesRaw:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTcpNoDelay:Z

    .line 6
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketReceiveTimeout:I

    const/16 v2, 0x1770

    .line 7
    iput v2, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketConnectTimeout:I

    .line 8
    iput-boolean v1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mValidateIncomingUtf8:Z

    .line 9
    iput-boolean v1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaskClientFrames:Z

    .line 10
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTlsProtocols:[Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingInterval:I

    .line 13
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeout:I

    .line 14
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeoutCountMax:I

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mHandShakeTimeoutSec:I

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 18
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    .line 19
    iget-boolean v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReceiveTextMessagesRaw:Z

    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReceiveTextMessagesRaw:Z

    .line 20
    iget-boolean v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTcpNoDelay:Z

    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTcpNoDelay:Z

    .line 21
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketReceiveTimeout:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketReceiveTimeout:I

    .line 22
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketConnectTimeout:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketConnectTimeout:I

    .line 23
    iget-boolean v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mValidateIncomingUtf8:Z

    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mValidateIncomingUtf8:Z

    .line 24
    iget-boolean v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaskClientFrames:Z

    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaskClientFrames:Z

    .line 25
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 26
    iget-object v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTlsProtocols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTlsProtocols:[Ljava/lang/String;

    .line 27
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingInterval:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingInterval:I

    .line 28
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeout:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeout:I

    .line 29
    iget v0, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeoutCountMax:I

    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeoutCountMax:I

    .line 30
    iget p1, p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mHandShakeTimeoutSec:I

    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mHandShakeTimeoutSec:I

    return-void
.end method


# virtual methods
.method public getAutoPingInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getAutoPingTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getAutoPingTimeoutCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeoutCountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getHandShakeTimeoutSec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mHandShakeTimeoutSec:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskClientFrames()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaskClientFrames:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMaxFramePayloadSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxMessagePayloadSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getReceiveTextMessagesRaw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReceiveTextMessagesRaw:Z

    .line 2
    .line 3
    return v0
.end method

.method public getReconnectInterval()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 6
    .line 7
    const/16 v1, 0x7d00

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 15
    .line 16
    return v0
.end method

.method public getSocketConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketConnectTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getSocketReceiveTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketReceiveTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getTLSEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTlsProtocols:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTcpNoDelay:Z

    .line 2
    .line 3
    return v0
.end method

.method public getValidateIncomingUtf8()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mValidateIncomingUtf8:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAutoPingInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoPingTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoPingTimeoutCountMax(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mAutoPingTimeoutCountMax:I

    .line 5
    .line 6
    return-void
.end method

.method public setHandShakeTimeoutSec(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mHandShakeTimeoutSec:I

    .line 5
    .line 6
    return-void
.end method

.method public setMaskClientFrames(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaskClientFrames:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaxFramePayloadSize(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 4
    .line 5
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    .line 6
    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMaxMessagePayloadSize(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxMessagePayloadSize:I

    .line 4
    .line 5
    iget v0, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mMaxFramePayloadSize:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setReceiveTextMessagesRaw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReceiveTextMessagesRaw:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReconnectInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mReconnectInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public setSocketConnectTimeout(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketConnectTimeout:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setSocketReceiveTimeout(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mSocketReceiveTimeout:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTLSEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTlsProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mTcpNoDelay:Z

    .line 2
    .line 3
    return-void
.end method

.method public setValidateIncomingUtf8(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->mValidateIncomingUtf8:Z

    .line 2
    .line 3
    return-void
.end method
