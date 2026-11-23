.class public Lcom/join/mgps/dto/ArenaGroupStateBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/join/mgps/dto/ArenaGroupStateBean;",
        ">;"
    }
.end annotation


# instance fields
.field private areaIndictor:I

.field private gameid:J

.field private groupid:I

.field private isarchive:B

.field private isvisit:B

.field private password:B

.field private position:I

.field private roomstate:B

.field showGroupId:I

.field private startbattle:B

.field private starttime:J

.field private svip:B

.field private userBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field

.field private usercount:B

.field private vip:B

.field private visitorBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/join/mgps/dto/ArenaGroupStateBean;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    iget p1, p1, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    if-gt v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/ArenaGroupStateBean;->compareTo(Lcom/join/mgps/dto/ArenaGroupStateBean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/join/mgps/dto/ArenaGroupStateBean;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGroupStateBean;->getGroupid()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1

    .line 19
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getAreaIndictor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGroupid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsarchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    .line 2
    .line 3
    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    .line 2
    .line 3
    return v0
.end method

.method public getPassword()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    .line 2
    .line 3
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomstate()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    .line 2
    .line 3
    return v0
.end method

.method public getShowGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->showGroupId:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartbattle()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    .line 2
    .line 3
    return v0
.end method

.method public getStarttime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSvip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->svip:B

    .line 2
    .line 3
    return v0
.end method

.method public getUserBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUsercount()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    .line 2
    .line 3
    return v0
.end method

.method public getVip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->vip:B

    .line 2
    .line 3
    return v0
.end method

.method public getVisitorBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    .line 2
    .line 3
    return v0
.end method

.method public setAreaIndictor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaIndictor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->areaIndictor:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    .line 2
    .line 3
    return-void
.end method

.method public setGroupid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsarchive(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isarchive"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    .line 2
    .line 3
    return-void
.end method

.method public setIsvisit(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isvisit"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    .line 2
    .line 3
    return-void
.end method

.method public setPassword(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    .line 2
    .line 3
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoomstate(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomstate"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    .line 2
    .line 3
    return-void
.end method

.method public setShowGroupId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 1
    rem-int/lit16 p1, p1, 0x3e8

    .line 2
    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->showGroupId:I

    .line 4
    .line 5
    return-void
.end method

.method public setStartbattle(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startbattle"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    .line 2
    .line 3
    return-void
.end method

.method public setStarttime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starttime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    .line 2
    .line 3
    return-void
.end method

.method public setSvip(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "svip"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->svip:B

    .line 2
    .line 3
    return-void
.end method

.method public setUserBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setUsercount(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usercount"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    .line 2
    .line 3
    return-void
.end method

.method public setVip(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->vip:B

    .line 2
    .line 3
    return-void
.end method

.method public setVisitorBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visitorBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

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
    const-string v1, "ArenaGroupStateBean{gameid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->gameid:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", groupid="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->groupid:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", roomstate="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->roomstate:B

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", password="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->password:B

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", isvisit="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isvisit:B

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", startbattle="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->startbattle:B

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", starttime="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->starttime:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", isarchive="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->isarchive:B

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", position="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->position:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", usercount="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->usercount:B

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", userBeanList="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->userBeanList:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", visitorBeanList="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaGroupStateBean;->visitorBeanList:Ljava/util/List;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x7d

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
