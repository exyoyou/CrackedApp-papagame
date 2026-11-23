.class public Lcom/sigmob/sdk/downloader/h;
.super Lcom/sigmob/sdk/downloader/core/listener/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Notification$Builder;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/widget/RemoteViews;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/listener/c;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig_download_notification_layout"

    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/downloader/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/downloader/h;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_button"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download temp file renameTo failed"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "FileDownloaderNotificationListener completed "

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_speed"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210,\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_button"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_status"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockCount",
            "currentOffset",
            "totalLength"
        }
    .end annotation

    .line 4
    const-wide/32 v0, 0x100000

    const-string p2, "M"

    const-string v2, "sig_download_notification_speed"

    const-wide/16 v3, 0x400

    cmp-long v5, p3, v0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    if-lez v5, :cond_0

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p3, v3

    div-long/2addr p3, v3

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "M/"

    goto :goto_0

    :cond_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p3, v3

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "KB/"

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p5, v3

    div-long/2addr p5, v3

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p4, "sig_download_notification_status"

    invoke-static {p3, p4}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const-string p4, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p4, "sig_download_notification_button"

    invoke-static {p3, p4}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "currentOffset",
            "totalLength"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0x100000

    const-string v2, "M"

    const-string v3, "sig_download_notification_speed"

    const-wide/16 v4, 0x400

    cmp-long v6, p2, v0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    if-lez v6, :cond_0

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p2, v4

    div-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "M/"

    goto :goto_0

    :cond_0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p2, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "KB/"

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, p4, v4

    div-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p4, v0

    if-lez v3, :cond_1

    const-wide/16 v0, 0x64

    mul-long p2, p2, v0

    div-long/2addr p2, p4

    long-to-int p3, p2

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p4, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p5, "sig_download_notification_progressBar"

    invoke-static {p4, p5}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    const/16 p5, 0x64

    invoke-virtual {p2, p4, p5, p3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p4, "sig_download_notification_button"

    invoke-static {p3, p4}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "cause"
        }
    .end annotation

    .line 6
    return-void
.end method

.method protected a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "e"
        }
    .end annotation

    .line 7
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v1, "sig_download_notification_status"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v1, "sig_download_notification_button"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon_url",
            "title",
            "description"
        }
    .end annotation

    .line 8
    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const-string v1, "sig_filedownloader_notification"

    const/16 v2, 0x1a

    if-lt p3, v2, :cond_0

    const-string v3, "sig_filedownloader"

    invoke-static {v1, v3, v0}, Lcom/aggmoread/sdk/z/a/j/u;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-static {v4, v3}, Lcom/aggmoread/sdk/z/a/j/t;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    if-lt p3, v2, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/downloader/p;->a()V

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/sigmob/sdk/downloader/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    goto :goto_0

    :cond_1
    new-instance p3, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p3, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    iget-object p3, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_title"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p2

    new-instance p3, Lcom/sigmob/sdk/downloader/h$1;

    invoke-direct {p3, p0}, Lcom/sigmob/sdk/downloader/h$1;-><init>(Lcom/sigmob/sdk/downloader/h;)V

    invoke-virtual {p2, p1, p3}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p3, "sig_download_notification_progress"

    invoke-static {p2, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p3, "sig_download_notification_speed"

    invoke-static {p2, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const-string p3, "0M/0M"

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p3, "sig_download_notification_status"

    invoke-static {p2, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const-string p3, "\u7b49\u5f85\u5f00\u59cb"

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string p3, "sig_download_notification_button"

    invoke-static {p2, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/downloader/n;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :goto_2
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_status"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u51c6\u5907\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_button"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v3, "\u6682\u505c"

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected c(Lcom/sigmob/sdk/downloader/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_status"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    const-string v2, "sig_download_notification_button"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v3, "\u7ee7\u7eed"

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->c:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected d(Lcom/sigmob/sdk/downloader/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    return-void
.end method
