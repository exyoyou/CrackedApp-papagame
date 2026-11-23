.class public Lcom/join/mgps/dto/RankingGameBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "SourceFile"


# instance fields
.field private index:I

.field private task:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RankingGameBean;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingGameBean;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RankingGameBean;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public setTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingGameBean;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method
