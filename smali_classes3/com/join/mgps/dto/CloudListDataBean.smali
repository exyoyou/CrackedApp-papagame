.class public Lcom/join/mgps/dto/CloudListDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addTime:Ljava/lang/String;

.field private archiveCoin:Ljava/lang/String;

.field private archiveCover:Ljava/lang/String;

.field private archiveCoverFilePath:Ljava/lang/String;

.field private archiveDesc:Ljava/lang/String;

.field private archiveFile:Ljava/lang/String;

.field private archiveFileName:Ljava/lang/String;

.field private archiveFilePath:Ljava/lang/String;

.field private archiveId:Ljava/lang/String;

.field private archiveName:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private downNum:I

.field private fileMd5:Ljava/lang/String;

.field private fileSize:J

.field private goodrate:Ljava/lang/String;

.field private highComment:I

.field private highRate:I

.field private id:Ljava/lang/String;

.field private isCheck:I

.field private isComment:I

.field private isSelectCheck:Z

.field private isVip:I

.field private nickname:Ljava/lang/String;

.field private status:I

.field private tag:Ljava/lang/String;

.field private todayCoin:I

.field private totalCoin:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveCoin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveCoverFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->downNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGoodrate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->goodrate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHighComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->highComment:I

    .line 2
    .line 3
    return v0
.end method

.method public getHighRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->highRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsCheck()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isComment:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isVip:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTodayCoin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->todayCoin:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalCoin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->totalCoin:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSelectCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveCoin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveCoin"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoin:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveCover(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveCover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveCoverFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveCoverFilePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveDesc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveFile"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveFileName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveFilePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downNum"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->downNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileMd5"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setGoodrate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodrate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->goodrate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHighComment(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highComment"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->highComment:I

    .line 2
    .line 3
    return-void
.end method

.method public setHighRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highRate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->highRate:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsCheck(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCheck"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsComment(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isComment"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isComment:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsVip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVip"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isVip:I

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectCheck(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectCheck"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTodayCoin(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayCoin"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->todayCoin:I

    .line 2
    .line 3
    return-void
.end method

.method public setTotalCoin(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalCoin"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->totalCoin:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->uid:Ljava/lang/String;

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
    const-string v1, "CloudListDataBean{archiveName=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

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
    const-string v2, ", archiveCover=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

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
    const-string v2, ", archiveFile=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

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
    const-string v2, ", fileMd5=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

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
    const-string v2, ", fileSize="

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-wide v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", addTime=\'"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", archiveFilePath=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ", archiveCoverFilePath=\'"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ", archiveFileName=\'"

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", status="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", isCheck="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", isSelectCheck="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-boolean v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x7d

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0
.end method
