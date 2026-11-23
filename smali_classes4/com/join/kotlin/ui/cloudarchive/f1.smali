.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

.field public final synthetic c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field public final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/f1;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->V(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
