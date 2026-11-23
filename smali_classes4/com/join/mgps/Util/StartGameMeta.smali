.class public Lcom/join/mgps/Util/StartGameMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private RoomMode:I

.field private activityName:Ljava/lang/String;

.field private adDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation
.end field

.field private allowPcJoin:Z

.field private allowPeripheralJoin:Z

.field private apkOrSo:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private archiveSaveCount:I

.field private archiveSaveTime:I

.field private area:Ljava/lang/String;

.field private assetspath:Ljava/lang/String;

.field private bios:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private cheat:I

.field private cheatEnable:I

.field private classname:Ljava/lang/String;

.field private clientIp:Ljava/lang/String;

.field private core:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field private dnsJson:Ljava/lang/String;

.field private emuType:Ljava/lang/String;

.field private endGameId:I

.field private endGameLevelRules:Ljava/lang/String;

.field private endGameTime:I

.field private endId:Ljava/lang/String;

.field private fastIP:Ljava/lang/String;

.field private fromCls:Ljava/lang/String;

.field private gameID:Ljava/lang/String;

.field private gamePlayers:I

.field private gametype:I

.field private groupId:I

.field private intentFrom:I

.field private isBside:Z

.field private netMode:I

.field private netPlayers:I

.field private netState:Ljava/lang/String;

.field private oldGame:I

.field private p1Name:Ljava/lang/String;

.field private p2Name:Ljava/lang/String;

.field private pa_package_name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private plugin_area_val:J

.field private porder:I

.field private pspAdShowTime:I

.field private pspAdShowTimeSwitch:I

.field private ramCheck:Ljava/lang/String;

.field private rankAutoUpload:I

.field private rankMiniTime:I

.field private rankingID:Ljava/lang/String;

.field private result_show_type:Ljava/lang/String;

.field private rolesJson:Ljava/lang/String;

.field private romPath:Ljava/lang/String;

.field private roomID:Ljava/lang/String;

.field private roomSilent:I

.field private sVipLevel:I

.field private scoreBoard:I

.field private serverIP:Ljava/lang/String;

.field private serverPort:Ljava/lang/String;

.field private sopath:Ljava/lang/String;

.field private sp:I

.field private startMode:I

.field private subTitle:Ljava/lang/String;

.field private tagId:I

.field private tcptype:I

.field private token:Ljava/lang/String;

.field private tourist:Z

.field private type:I

.field private udpIP:Ljava/lang/String;

.field private udpport:I

.field private userID:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private verCode:Ljava/lang/String;

.field private version:I

.field private vipLevel:I

.field private vip_expire_time:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    iput v2, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    .line 25
    .line 26
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    .line 27
    .line 28
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    .line 29
    .line 30
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    .line 31
    .line 32
    iput v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    .line 33
    .line 34
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    .line 35
    .line 36
    iput v0, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApkOrSo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    .line 2
    .line 3
    return v0
.end method

.method public getArchiveSaveCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getArchiveSaveTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAssetspath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBios()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->bios:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    .line 2
    .line 3
    return v0
.end method

.method public getCheatEnable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    .line 2
    .line 3
    return v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->core:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getDnsJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->dnsJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEmuType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndGameId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameId:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndGameLevelRules()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameLevelRules:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndGameTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->endId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFastIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromCls()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->fromCls:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGamePlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    .line 2
    .line 3
    return v0
.end method

.method public getGametype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    .line 2
    .line 3
    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntentFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetPlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOldGame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    .line 2
    .line 3
    return v0
.end method

.method public getP1Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getP2Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPa_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_area_val()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPorder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    .line 2
    .line 3
    return v0
.end method

.method public getPspAdShowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getPspAdShowTimeSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTimeSwitch:I

    .line 2
    .line 3
    return v0
.end method

.method public getRamCheck()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRankAutoUpload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankAutoUpload:I

    .line 2
    .line 3
    return v0
.end method

.method public getRankMiniTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getRankingID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResult_show_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRolesJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rolesJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRomPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomSilent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    .line 2
    .line 3
    return v0
.end method

.method public getScoreBoard()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->scoreBoard:I

    .line 2
    .line 3
    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSopath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->subTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tagId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTcptype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUdpIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->verCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    .line 2
    .line 3
    return v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip_expire_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getsVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public isAllowPcJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    .line 2
    .line 3
    return v0
.end method

.method public isBside()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->isBside:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTourist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

    .line 2
    .line 3
    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setAllowPcJoin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowPcJoin"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowPeripheralJoin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowPeripheralJoin"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    .line 2
    .line 3
    return-void
.end method

.method public setApkOrSo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkOrSo"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveSaveCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveSaveCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveSaveTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveSaveTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAssetspath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetspath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBios(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bios"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->bios:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBside(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bside"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->isBside:Z

    .line 2
    .line 3
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCheat(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cheat"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    .line 2
    .line 3
    return-void
.end method

.method public setCheatEnable(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cheatEnable"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    .line 2
    .line 3
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientIp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "core"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->core:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDnsJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dnsJson"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->dnsJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEmuType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emuType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndGameId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endGameId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameId:I

    .line 2
    .line 3
    return-void
.end method

.method public setEndGameLevelRules(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endGameLevelRules"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameLevelRules:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndGameTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endGameTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->endGameTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setEndId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->endId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFastIP(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fastIP"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFromCls(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromCls"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->fromCls:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGamePlayers(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamePlayers"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    .line 2
    .line 3
    return-void
.end method

.method public setGametype(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gametype"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    .line 2
    .line 3
    return-void
.end method

.method public setGroupId(I)V
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
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    .line 2
    .line 3
    return-void
.end method

.method public setIntentFrom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentFrom"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetPlayers(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netPlayers"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetState(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netState"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOldGame(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldGame"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    .line 2
    .line 3
    return-void
.end method

.method public setP1Name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p1Name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setP2Name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p2Name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPa_package_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pa_package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_area_val(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_area_val"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    .line 2
    .line 3
    return-void
.end method

.method public setPorder(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "porder"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    .line 2
    .line 3
    return-void
.end method

.method public setPspAdShowTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pspAdShowTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setPspAdShowTimeSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pspAdShowTimeSwitch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTimeSwitch:I

    .line 2
    .line 3
    return-void
.end method

.method public setRamCheck(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ramCheck"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRankAutoUpload(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankAutoUpload"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankAutoUpload:I

    .line 2
    .line 3
    return-void
.end method

.method public setRankMiniTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankMiniTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setRankingID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankingID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResult_show_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result_show_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRolesJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rolesJson"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rolesJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRomPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoomMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoomSilent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomSilent"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    .line 2
    .line 3
    return-void
.end method

.method public setScoreBoard(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoreBoard"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->scoreBoard:I

    .line 2
    .line 3
    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverIP"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverPort"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSopath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sopath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    .line 2
    .line 3
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
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->subTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTagId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tagId:I

    .line 2
    .line 3
    return-void
.end method

.method public setTcptype(I)V
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
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTourist(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tourist"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

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
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setUdpIP(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "udpIP"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userIcon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVerCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verCode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->verCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    .line 2
    .line 3
    return-void
.end method

.method public setVipLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipLevel"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip_expire_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_expire_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setsVipLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sVipLevel"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

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
    const-string v1, "StartGameMeta{allowPeripheralJoin="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", allowPcJoin="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", udpIP=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", RoomMode="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", packageName=\'"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", activityName=\'"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", romPath=\'"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ", startMode="

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ", userID=\'"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ", gameID=\'"

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ", version="

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, ", roomID=\'"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ", serverIP=\'"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, ", serverPort=\'"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, ", porder="

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, ", type="

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v2, ", plugin_area_val="

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    .line 201
    .line 202
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, ", tourist="

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-boolean v2, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, ", p1Name=\'"

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, ", p2Name=\'"

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, ", emuType=\'"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v2, ", oldGame="

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v2, ", clientIp=\'"

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, ", udpport="

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v2, ", tcptype="

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v2, ", ramCheck=\'"

    .line 298
    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v2, ", netState=\'"

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v2, ", token=\'"

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v2, ", cheat="

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v2, ", userName=\'"

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v2, ", userIcon=\'"

    .line 360
    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v2, ", netMode="

    .line 373
    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, ", netPlayers="

    .line 383
    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v2, ", gamePlayers="

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    .line 398
    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v2, ", groupId="

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    .line 408
    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v2, ", area=\'"

    .line 413
    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v2, ", adDatas="

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v2, ", vipLevel="

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    .line 441
    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v2, ", sVipLevel="

    .line 446
    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v2, ", vip_expire_time="

    .line 456
    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    iget-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    .line 461
    .line 462
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v2, ", result_show_type=\'"

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, ", pa_package_name=\'"

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v2, ", roomSilent="

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    .line 497
    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v2, ", fastIP=\'"

    .line 502
    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v2, ", gametype="

    .line 515
    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    .line 520
    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v2, ", cheatEnable="

    .line 525
    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    .line 530
    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string v2, ", rankingID=\'"

    .line 535
    .line 536
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v2, ", assetspath=\'"

    .line 548
    .line 549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v2, ", sopath=\'"

    .line 561
    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v2, ", classname=\'"

    .line 574
    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v1, ", apkOrSo="

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    iget v1, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v1, ", sp="

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget v1, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const/16 v1, 0x7d

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    return-object v0
.end method
