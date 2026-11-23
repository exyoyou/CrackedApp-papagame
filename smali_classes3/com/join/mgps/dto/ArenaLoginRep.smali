.class public Lcom/join/mgps/dto/ArenaLoginRep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEIJING:I = 0x1

.field public static final CLOSE_NO_ROOT:I = 0x2774

.field public static final FORBID:I = 0x238c

.field public static final GUANGZHOU:I = 0x3

.field public static final PING_TIP:I = 0x2710

.field public static final S2C_BEGIN_GROUP_RES:I = 0x6c

.field public static final S2C_CANCEL_GROUP_RES:I = 0x69

.field public static final S2C_CREATE_GROUP_RES:I = 0x66

.field public static final S2C_ENTER_BATTLE:I = 0x6b

.field public static final S2C_GET_USER_COUNTRES:I = 0x6f

.field public static final S2C_GROUP_ENTERAREA_RES:I = 0x64

.field public static final S2C_GROUP_SETOPTION_RES:I = 0x6a

.field public static final S2C_GROUP_USERSTATE:I = 0x67

.field public static final S2C_KICKGROUPUSERRES:I = 0x6e

.field public static final S2C_LIST_GROUPSTATE_RES:I = 0x68

.field public static final S2C_PLATFORM_NOTICEE:I = 0x71

.field public static final S2C_REFRESH_GROUPSTATE_RES:I = 0x65

.field public static final S2C_ROOM_IPPORT:I = 0x6d

.field public static final SHANGHAI:I = 0x2

.field public static final TYPE_BAK_NETWORK:I = -0x3e8

.field public static final TYPE_MATCH_KICK_OFF:I = 0x70

.field public static final TYPE_NO_ROOM:I = 0x3f2

.field public static final TYPE_OTHER_ERROR:I = 0xc1c

.field public static final VERSIONLOW:I = 0x17d4

.field private static final serialVersionUID:J = -0x4daa1dc70bcaa07eL


# instance fields
.field private area:I

.field private creator:J

.field private data:Ljava/lang/Object;

.field private errContent:Ljava/lang/String;

.field private firstPassord:Ljava/lang/String;

.field private gameId:J

.field gameidList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private groupid:I

.field private grouplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private isReady:Z

.field private isarchive:B

.field private isarchive_flg:B

.field private isvisit:B

.field private judgeVisit:Z

.field private logid:J

.field private maxperson:I

.field private maxvisitor:I

.field private me:Lcom/join/mgps/dto/ArenaUserBean;

.field private passWord:Ljava/lang/String;

.field private password:B

.field private port:I

.field private refreshtype:B

.field private result:B

.field private roomId:J

.field private roomtype:B

.field private server_type:I

.field showGroupId:I

.field private startMode:I

.field private startbattle:B

.field private starttime:J

.field private svip:B

.field private tcptype:B

.field private type:I

.field private udpport:I

.field private userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation
.end field

.field private userid:J

.field private vip:B

.field private visitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    new-instance v0, Ljava/util/TreeSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreator()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstPassord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->firstPassord:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameidList()Ljava/util/TreeSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    .line 2
    .line 3
    return v0
.end method

.method public getGrouplist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsarchive()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    .line 2
    .line 3
    return v0
.end method

.method public getIsarchive_flg()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

    .line 2
    .line 3
    return v0
.end method

.method public getIsvisit()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    .line 2
    .line 3
    return v0
.end method

.method public getLogid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxperson()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxvisitor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    .line 2
    .line 3
    return v0
.end method

.method public getMe()Lcom/join/mgps/dto/ArenaUserBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    .line 2
    .line 3
    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public getRefreshtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    .line 2
    .line 3
    return v0
.end method

.method public getResult()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRoomtype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    .line 2
    .line 3
    return v0
.end method

.method public getServer_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->showGroupId:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartbattle()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

    .line 2
    .line 3
    return v0
.end method

.method public getStarttime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSvip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->svip:B

    .line 2
    .line 3
    return v0
.end method

.method public getTcptype()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVip()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->vip:B

    .line 2
    .line 3
    return v0
.end method

.method public getVisitorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public isJudgeVisit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isReady:Z

    .line 2
    .line 3
    return v0
.end method

.method public setArea(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    .line 2
    .line 3
    return-void
.end method

.method public setCreator(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "creator"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    .line 2
    .line 3
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setErrContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errContent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstPassord(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstPassord"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->firstPassord:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    .line 2
    .line 3
    return-void
.end method

.method public setGameidList(Ljava/util/TreeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameidList"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

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
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    .line 2
    .line 3
    return-void
.end method

.method public setGrouplist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grouplist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaGroupStateBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    .line 2
    .line 3
    return-void
.end method

.method public setIsarchive_flg(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isarchive_flg"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    .line 2
    .line 3
    return-void
.end method

.method public setJudgeVisit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "judgeVisit"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLogid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logid"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    .line 2
    .line 3
    return-void
.end method

.method public setMaxperson(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxperson"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxvisitor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxvisitor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    .line 2
    .line 3
    return-void
.end method

.method public setMe(Lcom/join/mgps/dto/ArenaUserBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "me"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passWord"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    .line 2
    .line 3
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public setReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ready"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isReady:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRefreshtype(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshtype"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    .line 2
    .line 3
    return-void
.end method

.method public setResult(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    .line 2
    .line 3
    return-void
.end method

.method public setRoomId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    .line 2
    .line 3
    return-void
.end method

.method public setRoomtype(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomtype"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    .line 2
    .line 3
    return-void
.end method

.method public setServer_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

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
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->showGroupId:I

    .line 4
    .line 5
    return-void
.end method

.method public setStartMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startMode:I

    .line 2
    .line 3
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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

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
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->svip:B

    .line 2
    .line 3
    return-void
.end method

.method public setTcptype(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tcptype"
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setUdpport(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "udpport"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setUserid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userid"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

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
    iput-byte p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->vip:B

    .line 2
    .line 3
    return-void
.end method

.method public setVisitorList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visitorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ArenaUserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ArenaLoginRep{area="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->area:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", type="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->type:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", groupid="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->groupid:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", roomtype="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomtype:B

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", creator="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->creator:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isvisit="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isvisit:B

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", result="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->result:B

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", refreshtype="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->refreshtype:B

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", password="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->password:B

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", userid="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userid:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", startbattle="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->startbattle:B

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", starttime="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-wide v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->starttime:J

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", passWord=\'"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->passWord:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x27

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ", judgeVisit="

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-boolean v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->judgeVisit:Z

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, ", port="

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->port:I

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, ", ip=\'"

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->ip:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ", udpport="

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->udpport:I

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, ", tcptype="

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-byte v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->tcptype:B

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, ", logid="

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->logid:J

    .line 200
    .line 201
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, ", roomId="

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->roomId:J

    .line 210
    .line 211
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, ", gameId="

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-wide v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameId:J

    .line 220
    .line 221
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, ", server_type="

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->server_type:I

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v2, ", errContent=\'"

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v2, p0, Lcom/join/mgps/dto/ArenaLoginRep;->errContent:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v1, ", maxperson="

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxperson:I

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, ", maxvisitor="

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->maxvisitor:I

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ", isarchive="

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive:B

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, ", isarchive_flg="

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-byte v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->isarchive_flg:B

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v1, ", data="

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->data:Ljava/lang/Object;

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v1, ", me="

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->me:Lcom/join/mgps/dto/ArenaUserBean;

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v1, ", gameidList="

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->gameidList:Ljava/util/TreeSet;

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v1, ", grouplist="

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->grouplist:Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v1, ", userList="

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->userList:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v1, ", visitorList="

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaLoginRep;->visitorList:Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const/16 v1, 0x7d

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    return-object v0
.end method
