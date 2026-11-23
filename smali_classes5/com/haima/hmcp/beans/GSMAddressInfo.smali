.class public Lcom/haima/hmcp/beans/GSMAddressInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gsmUrl:Ljava/lang/String;

.field public gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

.field private instanceAccessUrl:Ljava/lang/String;

.field private ipV6TurnUrl:Ljava/lang/String;

.field private resolutionInfo:Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

.field private roomId:Ljava/lang/String;

.field private signalUrl:Ljava/lang/String;

.field private turnPassword:Ljava/lang/String;

.field private turnUrl:Ljava/lang/String;

.field private turnUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getGsmUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGsmUsbNatData()Lcom/haima/hmcp/beans/GSMUsbNatData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstanceAccessUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->instanceAccessUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIpV6TurnUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->ipV6TurnUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->resolutionInfo:Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->roomId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->signalUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTurnPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTurnUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTurnUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGsmUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGsmUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 2
    .line 3
    return-void
.end method

.method public setInstanceAccessUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->instanceAccessUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIpV6TurnUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->ipV6TurnUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResolutionInfo(Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->resolutionInfo:Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->roomId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSignalUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->signalUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTurnPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTurnUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTurnUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUserName:Ljava/lang/String;

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
    const-string v1, "GSMAddressInfo{gsmUrl=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUrl:Ljava/lang/String;

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
    const-string v2, ", signalUrl=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->signalUrl:Ljava/lang/String;

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
    const-string v2, ", roomId=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->roomId:Ljava/lang/String;

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
    const-string v2, ", turnUrl=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUrl:Ljava/lang/String;

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
    const-string v2, ", turnUserName=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnUserName:Ljava/lang/String;

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
    const-string v2, ", turnPassword=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->turnPassword:Ljava/lang/String;

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
    const-string v1, ", resolutionInfo="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->resolutionInfo:Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", gsmUsbNatData="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", instanceAccessUrl="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/haima/hmcp/beans/GSMAddressInfo;->instanceAccessUrl:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x7d

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
