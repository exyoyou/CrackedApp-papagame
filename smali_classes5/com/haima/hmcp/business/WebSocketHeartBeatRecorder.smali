.class Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pingCount:I

.field private pongCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method isNormal()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pingCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pongCount:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method ping()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pingCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pingCount:I

    .line 6
    .line 7
    return-void
.end method

.method pong()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pongCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->pongCount:I

    .line 6
    .line 7
    return-void
.end method
