.class public Lcom/haima/hmcp/rtc/widgets/beans/RtcCloudPlayInfo;
.super Lcom/haima/hmcp/beans/CloudPlayInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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
    if-eqz v0, :cond_15

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
    const-string v0, "100666001"

    .line 21
    .line 22
    :goto_0
    move-object v1, v0

    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string v0, "100666017"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/business/WebSocketManager;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    const-string v0, "100666002"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->isPingPongNormal()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    const-string v0, "100666003"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "100666004"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetCloudServiceSuccess:Z

    .line 56
    .line 57
    if-eqz v0, :cond_13

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 60
    .line 61
    if-nez v0, :cond_13

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 64
    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    const-string v0, "100666005"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 71
    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    const-string v0, "100666006"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 78
    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    const-string v0, "100666007"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 85
    .line 86
    if-nez v0, :cond_9

    .line 87
    .line 88
    const-string v0, "100666008"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_9
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 92
    .line 93
    if-nez v0, :cond_a

    .line 94
    .line 95
    const-string v0, "100666009"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_a
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 99
    .line 100
    if-eqz v0, :cond_b

    .line 101
    .line 102
    const-string v0, "100666010"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_b
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    const/4 v3, 0x0

    .line 109
    if-eqz v0, :cond_e

    .line 110
    .line 111
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 112
    .line 113
    if-eqz v0, :cond_c

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->isConnected()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_c

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_c
    const/4 v2, 0x0

    .line 123
    :goto_1
    if-eqz v2, :cond_d

    .line 124
    .line 125
    const-string v0, "100666015"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_d
    const-string v0, "100666016"

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_e
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 132
    .line 133
    if-eqz v0, :cond_f

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->isConnected()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_f

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_f
    const/4 v2, 0x0

    .line 143
    :goto_2
    if-eqz v2, :cond_11

    .line 144
    .line 145
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 146
    .line 147
    if-nez v0, :cond_10

    .line 148
    .line 149
    const-string v0, "100666012"

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_10
    const-string v0, "100666011"

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_11
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isFirstFrameArrival:Z

    .line 158
    .line 159
    if-nez v0, :cond_12

    .line 160
    .line 161
    const-string v0, "100666014"

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_12
    const-string v0, "100666013"

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_13
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetOperationFiveSuccess:Z

    .line 170
    .line 171
    if-nez v0, :cond_14

    .line 172
    .line 173
    const-string v0, "100666019"

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_14
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 178
    .line 179
    if-nez v0, :cond_16

    .line 180
    .line 181
    const-string v0, "100666020"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "CloudPlayInfo toStatusCode error : "

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_15
    const-string v0, "CloudPlayInfo toStatusCode : webSocketManager null "

    .line 212
    .line 213
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_16
    :goto_3
    iput-object v1, p0, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 217
    .line 218
    return-object v1
.end method
