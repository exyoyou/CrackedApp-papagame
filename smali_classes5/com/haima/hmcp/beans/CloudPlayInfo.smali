.class public Lcom/haima/hmcp/beans/CloudPlayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudPlayInfo"


# instance fields
.field public isAudioConnectSuccess:Z

.field public isFirstFrameArrival:Z

.field public isGetCloudServiceSuccess:Z

.field public isGetOperationFiveSuccess:Z

.field public isGetStreamUrlSuccess:Z

.field public isMatchStreamType:Z

.field public isReceiveCandidate:Z

.field public isReceiveOffer:Z

.field public isSendAnswer:Z

.field public isSendCandidate:Z

.field public isSignalConnectSuccess:Z

.field protected isStatusCodeEnable:Z

.field public isTurnOnVideoSuccess:Z

.field public isVideoConnectSuccess:Z

.field public isWebrtcConnectFailed:Z

.field public isWebrtcConnectSuccess:Z

.field public isWebrtcConnectTimeout:Z

.field protected mHMInput:Lcom/haima/hmcp/input/HMInput;

.field public pingCount:I

.field public pongCount:I

.field public reportStatusCode:Ljava/lang/String;

.field protected webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 37
    .line 38
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 39
    .line 40
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 41
    .line 42
    const-string v0, ""

    .line 43
    .line 44
    iput-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isStatusCodeEnable:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isStatusCodeEnable:Z

    .line 3
    .line 4
    return-void
.end method

.method public isPingPongNormal()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pingCount : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "pongCount : "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "CloudPlayInfo"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method public pingCountPlus1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 6
    .line 7
    return-void
.end method

.method public pongCountPlus1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 6
    .line 7
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-string v0, "CloudPlayInfo"

    .line 2
    .line 3
    const-string v1, "reset"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 41
    .line 42
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 43
    .line 44
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    iput-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public resetCloudPlayInfo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCloudServiceSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHMInput(Lcom/haima/hmcp/input/HMInput;)V
    .locals 2

    .line 1
    const-string v0, "CloudPlayInfo"

    .line 2
    .line 3
    const-string v1, "setHmInput"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 9
    .line 10
    return-void
.end method

.method public setPingPong(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 4
    .line 5
    return-void
.end method

.method public setWebSocketManager(Lcom/haima/hmcp/business/WebSocketManager;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/business/BaseManager;->resetListeners()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;

    .line 11
    .line 12
    return-void
.end method

.method public syncStatus(Lcom/haima/hmcp/beans/CloudPlayInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 48
    .line 49
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 52
    .line 53
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 56
    .line 57
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 64
    .line 65
    iget v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 66
    .line 67
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 68
    .line 69
    iget v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 70
    .line 71
    iput v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 72
    .line 73
    iget-object p1, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 76
    .line 77
    return-void
.end method

.method public toStatusCode()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isStatusCodeEnable:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;

    .line 9
    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    :try_start_0
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 13
    .line 14
    if-nez v2, :cond_5

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    const-string v0, "100999001"

    .line 21
    .line 22
    :goto_0
    move-object v1, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    const-string v0, "100999009"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/business/WebSocketManager;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string v0, "100999002"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->isPingPongNormal()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    const-string v0, "100999003"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const-string v0, "100999004"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->isConnected()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    const/4 v0, 0x0

    .line 67
    :goto_1
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 68
    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    const-string v0, "100999005"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_7
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 75
    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    const-string v0, "100999006"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_8
    if-eqz v0, :cond_9

    .line 82
    .line 83
    const-string v0, "100999007"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_9
    const-string v0, "100999008"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "CloudPlayInfo toStatusCode error : "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_a
    const-string v0, "CloudPlayInfo toStatusCode : webSocketManager null "

    .line 116
    .line 117
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    iput-object v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 121
    .line 122
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "code : "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->toStatusCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "\n211\u3001201\u6210\u529f : "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "\nAccess\u957f\u8fde\u63a5\u6210\u529f : "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->webSocketManager:Lcom/haima/hmcp/business/WebSocketManager;

    .line 42
    .line 43
    sget-object v3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/business/WebSocketManager;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "\n\u4e52\u4e53\u662f\u5426\u6b63\u5e38 : "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->isPingPongNormal()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "ping : "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pingCount:I

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " pong : "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->pongCount:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "\n\u83b7\u53d6\u6d41\u5730\u5740\u6210\u529f : "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "\n\u89c6\u9891\u6d41\u8fde\u63a5\u6210\u529f : "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "\n\u97f3\u9891\u6d41\u8fde\u63a5\u6210\u529f : "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, "\nInput\u957f\u8fde\u63a5\u6210\u529f : "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 120
    .line 121
    if-nez v2, :cond_0

    .line 122
    .line 123
    const-string v2, "null"

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v2}, Lcom/haima/hmcp/input/HMInput;->isConnected()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, "\nop5\u6210\u529f : "

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, "\n\u6253\u5f00\u906e\u7f69\u6210\u529f : "

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    :cond_1
    return-object v0
.end method
