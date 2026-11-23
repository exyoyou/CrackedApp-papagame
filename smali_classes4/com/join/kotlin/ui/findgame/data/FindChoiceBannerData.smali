.class public Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;
.super Lcom/join/kotlin/base/impl/BaseDownloadable;
.source "SourceFile"


# instance fields
.field private game_info:Lcom/join/mgps/dto/CollectionBeanSub;

.field private pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "game_info",
            "pic"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;-><init>()V

    const-string v0, "game_info"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pic"

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasGInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

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

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
