.class public Lcom/haima/hmcp/beans/SwitchStreamTypeData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SWITCH_NORMAL:I = 0x1

.field public static final SWITCH_RTC_FAILED:I = 0x2


# instance fields
.field public apkType:I

.field public battleMode:Lcom/haima/hmcp/beans/BattleMode;

.field public clientImeType:Lcom/haima/hmcp/beans/ClientImeType;

.field public cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

.field public downloadTransferData:Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;

.field public enableHighBitrate:Ljava/lang/Boolean;

.field public extParam:Ljava/lang/String;

.field public gamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

.field public mCloudId:Ljava/lang/String;

.field public mOnSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

.field public playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

.field public resolutionId:Ljava/lang/String;

.field public streamType:Lcom/haima/hmcp/enums/StreamType;

.field public switchCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->switchCode:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->enableHighBitrate:Ljava/lang/Boolean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getApkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCloudId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->extParam:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGamePlatformType()Lcom/haima/hmcp/beans/GamePlatformType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->gamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnSwitchStreamTypeListener()Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mOnSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayData()Lcom/haima/hmcp/beans/PlayStreamPayloadData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStreamType()Lcom/haima/hmcp/enums/StreamType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 2
    .line 3
    return-object v0
.end method

.method public setApkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 2
    .line 3
    return-void
.end method

.method public setCloudId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCloudPlayInfo(Lcom/haima/hmcp/beans/CloudPlayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setExtParam(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->extParam:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->gamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSwitchStreamTypeListener(Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mOnSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayData(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 2
    .line 3
    return-void
.end method

.method public setStreamType(Lcom/haima/hmcp/enums/StreamType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SwitchStreamTypeData{mCloudId=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", type=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", apkType="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", playData="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", cloudPlayInfo="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", clientImeType="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->clientImeType:Lcom/haima/hmcp/beans/ClientImeType;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", downloadTransferData="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->downloadTransferData:Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", switchCode="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->switchCode:I

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", resolutionId=\'"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->resolutionId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, ", extParam=\'"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->extParam:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", gamePlatformType="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->gamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", enableHighBitrate="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->enableHighBitrate:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", battleMode="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->battleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", mOnSwitchStreamTypeListener="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mOnSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const/16 v1, 0x7d

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0
.end method
