.class public Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field countlyAccessKeyId:Ljava/lang/String;

.field countlyAppKey:Ljava/lang/String;

.field countlyChannelId:Ljava/lang/String;

.field countlyCloudId:Ljava/lang/String;

.field countlyDeviceID:Ljava/lang/String;

.field countlyServerTimestamp:Ljava/lang/String;

.field countlyTransId:Ljava/lang/String;

.field countlyUrl:Ljava/lang/String;

.field ip:Ljava/lang/String;

.field port:I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HM_MISC_MSG_TYPE_REMOTE_DEVICE_INFO"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->tag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyTransId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->ip:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->port:I

    return-void
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyUrl:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAppKey:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyServerTimestamp:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyDeviceID:Ljava/lang/String;

    return-void
.end method

.method public getCountlyAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAppKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyChannelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyCloudId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyDeviceID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyDeviceID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyServerTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyServerTimestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyTransId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyTransId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCountlyAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyAppKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAppKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyChannelId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyCloudId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyDeviceID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyDeviceID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyServerTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyServerTimestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyTransId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyTransId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountlyUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public setTAG(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->tag:Ljava/lang/String;

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
    const-string v1, "RemoteDeviceInfo{countlyUrl=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyUrl:Ljava/lang/String;

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
    const-string v2, ", countlyAppKey=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAppKey:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", countlyTransId=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyTransId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", countlyDeviceID=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyDeviceID:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", countlyCloudId=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyCloudId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", countlyAccessKeyId=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyAccessKeyId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", countlyChannelId=\'"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyChannelId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", countlyServerTimestamp=\'"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->countlyServerTimestamp:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", ip=\'"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->ip:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, ", port=\'"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v2, p0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->port:I

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x7d

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method
