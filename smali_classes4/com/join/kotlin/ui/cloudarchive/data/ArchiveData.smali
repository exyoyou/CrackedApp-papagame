.class public Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private addTime:J

.field private archiveDesc:Ljava/lang/String;

.field private archiveFileSuffix:Ljava/lang/String;

.field private archiveLocalPath:Ljava/lang/String;

.field private archiveLocalZipPath:Ljava/lang/String;

.field private archiveLocation:Ljava/lang/String;

.field private archiveSize:J

.field private archiveZipPath:Ljava/lang/String;

.field private auditStatus:I

.field private avatar:Ljava/lang/String;

.field private checkStatus:I

.field private coverLocation:Ljava/lang/String;

.field private downloadCount:I

.field private game_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isChoice:I

.field private isDownloadArchive:I

.field private isFirstRun:I

.field private isLike:I

.field private isUnLike:I

.field private likeCount:I

.field private mainArchiveLocalPath:Ljava/lang/String;

.field private mainArchiveLocalPath2:Ljava/lang/String;

.field private negativeCount:I

.field private nickname:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private playTime:Ljava/lang/String;

.field private runingArchiveId:J

.field private showMoreStatus:I

.field private showText:Ljava/lang/String;

.field private showType:I

.field private status:I

.field private uid:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u4e0b\u8f7d"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    .line 14
    .line 15
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    .line 16
    .line 17
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    .line 18
    .line 19
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    .line 24
    .line 25
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public clone()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->clone()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getArchiveDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveFileSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveFileSuffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveLocalZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getArchiveZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuditStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getCoverLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsChoice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsDownloadArchive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsFirstRun()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsLike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsUnLike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    .line 2
    .line 3
    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getMainArchiveLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMainArchiveLocalPath2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNegativeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRuningArchiveId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShowMoreStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

    .line 2
    .line 3
    return v0
.end method

.method public setAddTime(J)V
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
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveFileSuffix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveFileSuffix"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveFileSuffix:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveLocalPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveLocalZipPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveLocalZipPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveLocation"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveZipPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveZipPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuditStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auditStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCheckStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public setCoverLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coverLocation"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsChoice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChoice"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsDownloadArchive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDownloadArchive"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsFirstRun(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirstRun"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsLike(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLike"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsUnLike(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUnLike"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    .line 2
    .line 3
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "likeCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setMainArchiveLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainArchiveLocalPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMainArchiveLocalPath2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainArchiveLocalPath2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNegativeCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "negativeCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRuningArchiveId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runingArchiveId"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    .line 2
    .line 3
    return-void
.end method

.method public setShowMoreStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showMoreStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public setShowText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

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
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
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
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

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
    const-string v1, "ArchiveData{archiveDesc=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

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
    const-string v2, ", addTime="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", archiveSize="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", archiveLocation=\'"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", archiveLocalPath=\'"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", archiveLocalZipPath=\'"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ", mainArchiveLocalPath=\'"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, ", mainArchiveLocalPath2=\'"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, ", avatar=\'"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ", coverLocation=\'"

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, ", downloadCount="

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, ", game_id=\'"

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, ", id=\'"

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v2, ", isDownloadArchive="

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v2, ", isLike="

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, ", likeCount="

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, ", isUnLike="

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, ", negativeCount="

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v2, ", nickname=\'"

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v2, ", uid="

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, ", packageName=\'"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

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
    const-string v2, ", archiveZipPath=\'"

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v2, ", showType="

    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, ", showText=\'"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v2, ", status="

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v2, ", playTime=\'"

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v1, ", isFirstRun="

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v1, ", auditStatus="

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v1, ", checkStatus="

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v1, ", runingArchiveId="

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    .line 349
    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v1, ", userId="

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v1, ", showMoreStatus="

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v1, ", isChoice="

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const/16 v1, 0x7d

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    return-object v0
.end method
