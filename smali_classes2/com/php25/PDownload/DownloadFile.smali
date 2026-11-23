.class public Lcom/php25/PDownload/DownloadFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private completeSize:J

.field private crc_link_type_val:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private discribe:Ljava/lang/String;

.field private downloading:Z

.field private dtype:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private finishTime:Ljava/lang/String;

.field private finished:Z

.field private gameZipPath:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isAutoPause:Z

.field private isDownloadingNow:Z

.field private isOpen:Z

.field private lastCompleteSize:J

.field private lastTime:J

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private percent:Ljava/lang/String;

.field private portraitURL:Ljava/lang/String;

.field private progress:I

.field private romType:Ljava/lang/String;

.field private showName:Ljava/lang/String;

.field private showType:I

.field private starNumber:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:Ljava/lang/Integer;

.field private transStat:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/php25/PDownload/DownloadFile;->totalSize:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/php25/PDownload/DownloadFile;->completeSize:J

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/php25/PDownload/DownloadFile;->showType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZJJJLjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "tag",
            "url",
            "basePath",
            "name",
            "showName",
            "absolutePath",
            "gameZipPath",
            "totalSize",
            "downloading",
            "finished",
            "createTime",
            "finishTime",
            "packageName",
            "portraitURL",
            "dtype",
            "fileType",
            "isDownloadingNow",
            "percent",
            "isAutoPause",
            "lastTime",
            "completeSize",
            "lastCompleteSize",
            "tipBeans",
            "crc_link_type_val",
            "romType",
            "progress",
            "transStat",
            "plugInFlag",
            "checkedFlag",
            "ver",
            "ver_name",
            "gid",
            "starNumber",
            "isOpen",
            "discribe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "ZJJJ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Lcom/php25/PDownload/DownloadFile;->showType:I

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->tag:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->url:Ljava/lang/String;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->basePath:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->name:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->showName:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->absolutePath:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->gameZipPath:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->totalSize:Ljava/lang/Integer;

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lcom/php25/PDownload/DownloadFile;->downloading:Z

    move v1, p11

    .line 13
    iput-boolean v1, v0, Lcom/php25/PDownload/DownloadFile;->finished:Z

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->createTime:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->finishTime:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->packageName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->dtype:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->fileType:Ljava/lang/String;

    move/from16 v1, p18

    .line 20
    iput-boolean v1, v0, Lcom/php25/PDownload/DownloadFile;->isDownloadingNow:Z

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->percent:Ljava/lang/String;

    move/from16 v1, p20

    .line 22
    iput-boolean v1, v0, Lcom/php25/PDownload/DownloadFile;->isAutoPause:Z

    move-wide/from16 v1, p21

    .line 23
    iput-wide v1, v0, Lcom/php25/PDownload/DownloadFile;->lastTime:J

    move-wide/from16 v1, p23

    .line 24
    iput-wide v1, v0, Lcom/php25/PDownload/DownloadFile;->completeSize:J

    move-wide/from16 v1, p25

    .line 25
    iput-wide v1, v0, Lcom/php25/PDownload/DownloadFile;->lastCompleteSize:J

    move-object/from16 v1, p27

    .line 26
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->tipBeans:Ljava/util/List;

    move-object/from16 v1, p28

    .line 27
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 28
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->romType:Ljava/lang/String;

    move/from16 v1, p30

    .line 29
    iput v1, v0, Lcom/php25/PDownload/DownloadFile;->progress:I

    move-object/from16 v1, p31

    .line 30
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->transStat:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 31
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->ver:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 32
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->ver_name:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 33
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->gid:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 34
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->starNumber:Ljava/lang/String;

    move/from16 v1, p38

    .line 35
    iput-boolean v1, v0, Lcom/php25/PDownload/DownloadFile;->isOpen:Z

    move-object/from16 v1, p39

    .line 36
    iput-object v1, v0, Lcom/php25/PDownload/DownloadFile;->discribe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->absolutePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->basePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/php25/PDownload/DownloadFile;->completeSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->createTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->discribe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->dtype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFinishTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->finishTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->finished:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->gameZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->gid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/php25/PDownload/DownloadFile;->lastCompleteSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/php25/PDownload/DownloadFile;->lastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->percent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->portraitURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/php25/PDownload/DownloadFile;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->romType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->showName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/php25/PDownload/DownloadFile;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public getStarNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->starNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTipBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->tipBeans:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->totalSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransStat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->transStat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/DownloadFile;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAutoPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->isAutoPause:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->downloading:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDownloadingNow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->isDownloadingNow:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->finished:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/php25/PDownload/DownloadFile;->isOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "absolutePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->absolutePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAutoPause(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAutoPause"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/php25/PDownload/DownloadFile;->isAutoPause:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->basePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCompleteSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completeSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/php25/PDownload/DownloadFile;->completeSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->createTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discribe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->discribe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloading"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/php25/PDownload/DownloadFile;->downloading:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadingNow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDownloadingNow"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/php25/PDownload/DownloadFile;->isDownloadingNow:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dtype"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->dtype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFinishTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->finishTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finished"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/php25/PDownload/DownloadFile;->finished:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameZipPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->gameZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->gid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setLastCompleteSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCompleteSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/php25/PDownload/DownloadFile;->lastCompleteSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/php25/PDownload/DownloadFile;->lastTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/php25/PDownload/DownloadFile;->isOpen:Z

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
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->percent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "portraitURL"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->portraitURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/php25/PDownload/DownloadFile;->progress:I

    .line 2
    .line 3
    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->romType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->showName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/php25/PDownload/DownloadFile;->showType:I

    .line 2
    .line 3
    return-void
.end method

.method public setStarNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starNumber"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->starNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTipBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->tipBeans:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTotalSize(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->totalSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setTransStat(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transStat"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->transStat:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/DownloadFile;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
