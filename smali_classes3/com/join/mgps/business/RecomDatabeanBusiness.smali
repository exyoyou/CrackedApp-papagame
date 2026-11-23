.class public Lcom/join/mgps/business/RecomDatabeanBusiness;
.super Lcom/join/mgps/dto/RecomDatabean;
.source "SourceFile"


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private moretype:Ljava/lang/String;

.field private videoSeekCurrent:J


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recomDatabean"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/RecomDatabean;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMoretype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->moretype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoSeekCurrent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->videoSeekCurrent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public setMoretype(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moretype"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->moretype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSeekCurrent(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSeekCurrent"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/business/RecomDatabeanBusiness;->videoSeekCurrent:J

    .line 2
    .line 3
    return-void
.end method
