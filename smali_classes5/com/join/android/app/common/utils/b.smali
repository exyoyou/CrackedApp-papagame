.class public final synthetic Lcom/join/android/app/common/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field public final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/utils/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/android/app/common/utils/b;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p3, p0, Lcom/join/android/app/common/utils/b;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/android/app/common/utils/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/android/app/common/utils/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/android/app/common/utils/b;->c:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iget-object v2, p0, Lcom/join/android/app/common/utils/b;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/android/app/common/utils/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/android/app/common/utils/b;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils$b;->e(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
