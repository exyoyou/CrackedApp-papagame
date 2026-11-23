.class public Lcom/join/mgps/dto/CommonMultiItemBean;
.super Lcom/join/kotlin/base/impl/BaseDownloadable;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# instance fields
.field private data:Ljava/lang/Object;

.field private downState:Lcom/join/kotlin/model/bean/DownState;

.field private extData:Ljava/lang/Object;

.field private extraData:Ljava/lang/Object;

.field private info:Lcom/join/kotlin/base/impl/GInfo;

.field public viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewType",
            "data"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->viewType:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->data:Ljava/lang/Object;

    .line 5
    instance-of p1, p2, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 7
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->getGame()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    new-instance p1, Lcom/join/kotlin/model/bean/DownState;

    invoke-direct {p1}, Lcom/join/kotlin/model/bean/DownState;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    goto :goto_0

    .line 9
    :cond_0
    instance-of p1, p2, Lcom/join/kotlin/base/impl/GInfo;

    if-eqz p1, :cond_1

    .line 10
    check-cast p2, Lcom/join/kotlin/base/impl/GInfo;

    iput-object p2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    goto :goto_0

    .line 11
    :cond_1
    instance-of p1, p2, Lcom/join/kotlin/base/impl/Downloadable;

    if-eqz p1, :cond_2

    .line 12
    check-cast p2, Lcom/join/kotlin/base/impl/Downloadable;

    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method private buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 22
    .line 23
    mul-double v2, v2, v4

    .line 24
    .line 25
    mul-double v2, v2, v4

    .line 26
    .line 27
    double-to-long v2, v2

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-wide v2, v0

    .line 34
    :goto_0
    cmp-long v4, v2, v0

    .line 35
    .line 36
    if-gtz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, "/"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownState()Lcom/join/kotlin/model/bean/DownState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->extData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->extraData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public hasGInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public is64Bit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->is64Bit()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isAndroidGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isAndroidGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isBtGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isBtGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isCpsGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isGameVm()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isH5Game()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isH5Game()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isH5VmGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isH5VmGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isHmCloud()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isHmCloud()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isMiniGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isModGameVm()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isNetGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->isNetGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isNetGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isNetGameVm()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->hasGInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->info:Lcom/join/kotlin/base/impl/GInfo;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isSingleGameVm()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public setExtData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->extData:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->extraData:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->viewType:I

    .line 2
    .line 3
    return-void
.end method

.method public update(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notify"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    const/16 v3, 0x1b

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    .line 30
    const/16 v3, 0x30

    .line 31
    .line 32
    if-eq v2, v3, :cond_4

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    if-eq v2, v3, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x6

    .line 44
    if-eq v2, v3, :cond_1

    .line 45
    .line 46
    const/4 v3, 0x7

    .line 47
    if-eq v2, v3, :cond_4

    .line 48
    .line 49
    const/16 v3, 0x2a

    .line 50
    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    const/16 v3, 0x2b

    .line 54
    .line 55
    if-eq v2, v3, :cond_4

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    long-to-int v3, v2

    .line 79
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 92
    .line 93
    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setStatusText(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    long-to-int v3, v2

    .line 117
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 130
    .line 131
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setStatusText(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    long-to-int v3, v2

    .line 158
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 162
    .line 163
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 171
    .line 172
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setStatusText(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 188
    .line 189
    invoke-virtual {v2, v1}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    long-to-int v3, v2

    .line 199
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 203
    .line 204
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 212
    .line 213
    const-string v1, "\u6682\u505c\u4e2d"

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setStatusText(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 223
    .line 224
    invoke-virtual {v2, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 235
    .line 236
    .line 237
    move-result-wide v2

    .line 238
    long-to-int v3, v2

    .line 239
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 243
    .line 244
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 252
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v0, "/S"

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setStatusText(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 279
    .line 280
    invoke-virtual {v2, v4}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 284
    .line 285
    invoke-virtual {v2, v1}, Lcom/join/kotlin/model/bean/DownState;->setDownMode(I)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 291
    .line 292
    .line 293
    move-result-wide v2

    .line 294
    long-to-int v3, v2

    .line 295
    invoke-virtual {v1, v3}, Lcom/join/kotlin/model/bean/DownState;->setProgress(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 299
    .line 300
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->buildDownSizeText(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v1, v0}, Lcom/join/kotlin/model/bean/DownState;->setDownText(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_4
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/join/kotlin/model/bean/DownState;->setUiMode(I)V

    .line 311
    .line 312
    .line 313
    :goto_0
    if-eqz p1, :cond_5

    .line 314
    .line 315
    iget-object p1, p0, Lcom/join/mgps/dto/CommonMultiItemBean;->downState:Lcom/join/kotlin/model/bean/DownState;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 318
    .line 319
    .line 320
    :cond_5
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
