.class public Lorg/webrtc/haima/beans/WebSocketConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PING_INTERVAL:I = 0xa

.field public static final PING_TIME_OUT_COUNT_MAX:I = 0x3


# instance fields
.field private delay:I

.field private interval:I

.field private pingInterval:I

.field private pingTimeOutCountMax:I

.field private trace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingInterval:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingTimeOutCountMax:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->delay:I

    .line 2
    .line 3
    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingTimeOutCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingTimeOutCountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrace()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->trace:I

    .line 2
    .line 3
    return v0
.end method

.method public setDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->delay:I

    .line 2
    .line 3
    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->interval:I

    .line 2
    .line 3
    return-void
.end method

.method public setPingInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public setPingTimeOutCountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingTimeOutCountMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrace(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->trace:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WebSocketConfig{interval="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->interval:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", delay="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->delay:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", trace="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->trace:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", pingInterval="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingInterval:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", pingTimeOutCountMax="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lorg/webrtc/haima/beans/WebSocketConfig;->pingTimeOutCountMax:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
