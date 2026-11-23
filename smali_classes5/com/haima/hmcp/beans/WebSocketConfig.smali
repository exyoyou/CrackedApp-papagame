.class public Lcom/haima/hmcp/beans/WebSocketConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessPingInterval:I

.field private accessPingTimeoutCountMax:I

.field private framePayloadMaxSize:I

.field private inputPingInterval:I

.field private inputPingTimeoutCountMax:I

.field private instancePingPongCost:I

.field private messagePayloadMaxSize:I

.field private ping2Interval:I

.field private saasLinktTimeOutSec:I

.field private trace:I

.field private wsLinkTimeOutSec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    const/16 v0, 0x80

    .line 4
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/beans/WebSocketConfig;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    const/16 v0, 0x80

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    .line 10
    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    .line 11
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->ping2Interval:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->ping2Interval:I

    .line 12
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->instancePingPongCost:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->instancePingPongCost:I

    .line 13
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->trace:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->trace:I

    .line 14
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    .line 15
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    .line 16
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingInterval:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingInterval:I

    .line 17
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingTimeoutCountMax:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingTimeoutCountMax:I

    .line 18
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    .line 19
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    .line 20
    iget v0, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->saasLinktTimeOutSec:I

    iput v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->saasLinktTimeOutSec:I

    .line 21
    iget p1, p1, Lcom/haima/hmcp/beans/WebSocketConfig;->wsLinkTimeOutSec:I

    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->wsLinkTimeOutSec:I

    return-void
.end method


# virtual methods
.method public getAccessPingInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getAccessPingTimeoutCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getFramePayloadMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputPingInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputPingTimeoutCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingTimeoutCountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getInstancePingPongCost()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->instancePingPongCost:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessagePayloadMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getPing2Interval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->ping2Interval:I

    .line 2
    .line 3
    return v0
.end method

.method public getSaasLinkTimeOutSec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->saasLinktTimeOutSec:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrace()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->trace:I

    .line 2
    .line 3
    return v0
.end method

.method public getWsLinkTimeOutSec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->wsLinkTimeOutSec:I

    .line 2
    .line 3
    return v0
.end method

.method public setAccessPingInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public setAccessPingTimeoutCountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->accessPingTimeoutCountMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setFramePayloadMaxSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->framePayloadMaxSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setInputPingInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public setInputPingTimeoutCountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->inputPingTimeoutCountMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setInstancePingPongCost(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->instancePingPongCost:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessagePayloadMaxSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->messagePayloadMaxSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setPing2Interval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->ping2Interval:I

    .line 2
    .line 3
    return-void
.end method

.method public setSaasLinkTimeOutSec(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->saasLinktTimeOutSec:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrace(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->trace:I

    .line 2
    .line 3
    return-void
.end method

.method public setWsLinkTimeOutSec(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/WebSocketConfig;->wsLinkTimeOutSec:I

    .line 2
    .line 3
    return-void
.end method
