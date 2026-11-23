.class Lcom/php25/PDownload/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/php25/PDownload/d;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$downloadTask",
            "val$context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/d$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/php25/PDownload/d$a;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/php25/PDownload/d$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/php25/PDownload/d$a;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
