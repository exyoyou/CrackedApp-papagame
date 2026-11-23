.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isDownloading(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStartTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isOpened(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isOpened(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1

    .line 7
    :cond_4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isOpened(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-ltz v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 10
    :cond_7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isFinished(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->compare(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p1

    return p1
.end method

.method isDownloading(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isFinished(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;->isUpdate(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    :goto_1
    return p1
.end method

.method isOpened(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method isUpdate(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
