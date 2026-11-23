.class public Lcom/haima/hmcp/beans/GetCloudServiceResult2;
.super Lcom/haima/hmcp/beans/BaseResult;
.source "SourceFile"


# instance fields
.field public addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

.field public apkType:Ljava/lang/String;

.field public battleOnlineType:I

.field public cid:Ljava/lang/String;

.field public disableAutoStream:Z

.field public distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

.field public gamePad:Ljava/lang/Integer;

.field public gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

.field public hasConfirmed:Z

.field public inTvRtcBlackList:Z

.field public instructionSet:Ljava/lang/String;

.field public maintainBegin:Ljava/lang/String;

.field public maintainEnd:Ljava/lang/String;

.field public minimumBitRate:Ljava/lang/String;

.field public msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

.field public resolutionId:Ljava/lang/String;

.field public resultErrorMsg:Ljava/lang/String;

.field public secretKey:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public stateChangeReason:Ljava/lang/String;

.field public streamType:Ljava/lang/String;

.field public webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/BaseResult;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gamePad:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GetCloudServiceResult2{ "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/haima/hmcp/beans/BaseResult;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", cloudId = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", secretKey = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->secretKey:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", inTvRtcBlackList = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->inTvRtcBlackList:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", instructionSet=\'"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->instructionSet:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x27

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", gsmAddressInfo="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 69
    .line 70
    const-string v2, "null"

    .line 71
    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    move-object v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/GSMAddressInfo;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", resolutionId = "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->resolutionId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ", distanceLimitExceeded = "

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

    .line 115
    .line 116
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/DistanceLimit;->distanceLimitExceeded:Z

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ", minDistance = "

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

    .line 127
    .line 128
    iget-wide v3, v0, Lcom/haima/hmcp/beans/DistanceLimit;->minDistance:J

    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, ", ip: "

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/haima/hmcp/beans/MessageServerInfo;->serverIp:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ", serverPort = "

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/haima/hmcp/beans/MessageServerInfo;->serverPort:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, ", socketUrl = "

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, ", socketUrlList = "

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrlList:Ljava/util/List;

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, ", battleOnlineType = "

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, ", gamePad = "

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gamePad:Ljava/lang/Integer;

    .line 213
    .line 214
    if-eqz v0, :cond_2

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const/16 v0, 0x7d

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_3
    return-object v0
.end method
