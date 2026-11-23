.class public Lcom/papa/sim/statistic/Ext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aaid:Ljava/lang/String;

.field private actType:Ljava/lang/String;

.field private apkCount:I

.field private articleId:Ljava/lang/String;

.field private btn:Ljava/lang/String;

.field private channel_id:I

.field private chatId:Ljava/lang/String;

.field private clearStatus:I

.field private clearTime:J

.field private collectId:Ljava/lang/String;

.field private dataFlag:Ljava/lang/String;

.field private delayAvg:I

.field private delayMax:I

.field private duration:J

.field private emuCount:Ljava/lang/String;

.field private endId:Ljava/lang/String;

.field private fightId:Ljava/lang/String;

.field private firstModule:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private fromTabId:Ljava/lang/String;

.field private gameFlag:I

.field private gameId:Ljava/lang/String;

.field private gameList:Ljava/lang/String;

.field private gameMode:I

.field private guideKey:Ljava/lang/String;

.field private interrupt:I

.field private ip:Ljava/lang/String;

.field private isAutoRefresh:I

.field private isJoin:Ljava/lang/String;

.field private isResultPage:Ljava/lang/String;

.field private isdirect:I

.field private keyWord:Ljava/lang/String;

.field private liveTime:J

.field private location:Ljava/lang/String;

.field private logFile:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private memberCount:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private netType:I

.field private nodeId:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private papaPage:Ljava/lang/String;

.field private picName:Ljava/lang/String;

.field private plugId:Ljava/lang/String;

.field private plugVersion:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private qkPosition:Ljava/lang/String;

.field private reMarks:Ljava/lang/String;

.field private reMarks1:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;

.field private recScene:Ljava/lang/String;

.field private recTid:Ljava/lang/String;

.field private recVersion:Ljava/lang/String;

.field private resouceid:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private roomID:Ljava/lang/String;

.field private scenesCode:Ljava/lang/String;

.field private secondModule:Ljava/lang/String;

.field private shareMfr:I

.field private shareResult:I

.field private shareType:I

.field private sopName:Ljava/lang/String;

.field private sopNo:Ljava/lang/String;

.field private tag_ids:Ljava/lang/String;

.field private testAbNumber:Ljava/lang/String;

.field private type:Lcom/papa/sim/statistic/ExtType;

.field private typeCode:Ljava/lang/String;

.field private uid:I

.field private uid2:Ljava/lang/String;

.field private vaid:Ljava/lang/String;

.field private webUa:Ljava/lang/String;

.field private where:Ljava/lang/String;

.field private zipCost:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->aaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->actType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApkCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->apkCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBtn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->btn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannel_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->channel_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->chatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClearStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->clearStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getClearTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->clearTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->collectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->dataFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelayAvg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->delayAvg:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelayMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->delayMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEmuCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->emuCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->endId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFightId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->fightId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->firstModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromTabId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->fromTabId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->gameFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->gameList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->gameMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getGuideKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->guideKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterrupt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->interrupt:I

    .line 2
    .line 3
    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsAutoRefresh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->isAutoRefresh:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsJoin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->isJoin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsResultPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->isResultPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsdirect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->isdirect:I

    .line 2
    .line 3
    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->keyWord:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->liveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->logFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->memberCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->module:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->netType:I

    .line 2
    .line 3
    return v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->oaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->page:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapaPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->papaPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->picName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->plugId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->plugVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQkPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->reMarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReMarks1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->reMarks1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recScene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recTid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResouceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->resouceid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->resultCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->roomID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScenesCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->scenesCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->secondModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShareMfr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareMfr:I

    .line 2
    .line 3
    return v0
.end method

.method public getShareResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareResult:I

    .line 2
    .line 3
    return v0
.end method

.method public getShareType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSopName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->sopName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSopNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->sopNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_ids()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->tag_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTestAbNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->testAbNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/papa/sim/statistic/ExtType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->typeCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->uid2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->vaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebUa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->webUa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getZipCost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->zipCost:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->aaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->actType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setApkCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->apkCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBtn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->btn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setChannel_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->channel_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->chatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setClearStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->clearStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public setClearTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->clearTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setCollectId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->collectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDataFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->dataFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDelayAvg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->delayAvg:I

    .line 2
    .line 3
    return-void
.end method

.method public setDelayMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->delayMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public setEmuCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->emuCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->endId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFightId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->fightId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->firstModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->fromTabId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGameFlag(I)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->gameFlag:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGameList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->gameList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameMode(I)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->gameMode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setGuideKey(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->guideKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInterrupt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->interrupt:I

    .line 2
    .line 3
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutoRefresh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->isAutoRefresh:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->isJoin:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->isResultPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsdirect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->isdirect:I

    .line 2
    .line 3
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->keyWord:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLiveTime(J)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->liveTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->logFile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMemberCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->memberCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->module:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->netType:I

    .line 2
    .line 3
    return-void
.end method

.method public setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->oaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->page:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPapaPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->papaPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPicName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->picName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->plugId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->plugVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->reMarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReMarks1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->reMarks1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecScene(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recScene:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecTid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recTid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResouceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->resouceid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->resultCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->roomID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->scenesCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSecondModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->secondModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setShareMfr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareMfr:I

    .line 2
    .line 3
    return-void
.end method

.method public setShareResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareResult:I

    .line 2
    .line 3
    return-void
.end method

.method public setShareType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSopName(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->sopName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSopNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->sopNo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_ids(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->tag_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->testAbNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Lcom/papa/sim/statistic/ExtType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    .line 2
    .line 3
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->typeCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUid(I)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setUid2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->uid2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->vaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWebUa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->webUa:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setZipCost(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->zipCost:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Ext{uid=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    const-string v1, ", type="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", from="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
