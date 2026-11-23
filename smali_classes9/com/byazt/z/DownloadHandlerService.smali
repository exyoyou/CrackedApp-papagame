.class public Lcom/byazt/z/DownloadHandlerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x5c1
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "DownloadHandlerService"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static c(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 36
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/zz/uj;->u(I)Lcom/byazt/c/eo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {p2, v1}, Lcom/byazt/c/eo;->tt(Lcom/byazt/t/DownloadInfo;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 39
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 40
    invoke-static {p0, p1, p2}, Lcom/byazt/z/ve;->c(Landroid/content/Context;IZ)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Open Fail!"

    .line 41
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/s/n;Lcom/byazt/t/DownloadInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p0

    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/zz/Downloader;->getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;

    move-result-object p0

    if-nez p1, :cond_1

    if-nez p0, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/byazt/z/DownloadHandlerService$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/byazt/z/DownloadHandlerService$2;-><init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/w/a;->tt(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->stopPauseReserveOnWifi()V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V
    .locals 8

    .line 42
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    .line 43
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/zz/uj;->u(I)Lcom/byazt/c/eo;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    .line 44
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1}, Lcom/byazt/z/ve;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/byazt/c/eo;->ve(Lcom/byazt/t/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    const-string v7, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 48
    :pswitch_1
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/zz/Downloader;->pause(I)V

    .line 49
    invoke-static {p0, p1}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)V

    if-eqz p2, :cond_1

    const/4 v2, 0x5

    const-string v3, ""

    .line 50
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/byazt/s/n;->c(IILjava/lang/String;IJ)V

    :cond_1
    if-eqz p3, :cond_6

    const/4 p0, 0x5

    .line 51
    invoke-interface {p3, p0, p1, v7, v7}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :pswitch_2
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/zz/uj;->n(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/byazt/zz/Downloader;->resume(I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p1, v3, v2}, Lcom/byazt/z/ve;->c(Lcom/byazt/t/DownloadInfo;ZZ)V

    :goto_0
    if-eqz p2, :cond_3

    const/4 v2, 0x6

    const-string v3, ""

    .line 55
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/byazt/s/n;->c(IILjava/lang/String;IJ)V

    :cond_3
    if-eqz p3, :cond_6

    const/4 p0, 0x6

    .line 56
    invoke-interface {p3, p0, p1, v7, v7}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :pswitch_3
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1, v3}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;IZ)V

    .line 58
    invoke-static {p0, p2, p1}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;Lcom/byazt/s/n;Lcom/byazt/t/DownloadInfo;)V

    .line 59
    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p0

    const-string p1, "notification_click_install_auto_cancel"

    invoke-virtual {p0, p1, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4

    .line 60
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/byazt/n/tt;->n(I)Lcom/byazt/n/c;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/byazt/n/c;->sp()V

    const/4 p1, -0x3

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/byazt/n/c;->c(ILcom/byazt/m/BaseException;ZZ)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 63
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/byazt/n/tt;->c(I)V

    goto :goto_2

    .line 64
    :pswitch_4
    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p2

    const-string p3, "enable_notification_ui"

    invoke-virtual {p2, p3}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_5

    .line 65
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 66
    invoke-virtual {p1, v2}, Lcom/byazt/t/DownloadInfo;->setOnlyWifi(Z)V

    .line 67
    :cond_5
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/byazt/zz/Downloader;->restart(I)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "extra_click_download_ids"

    .line 3
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_click_download_type"

    .line 4
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/z/uj;->ve()Lcom/byazt/s/n;

    move-result-object v3

    .line 6
    invoke-static {p0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/byazt/zz/Downloader;->getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;

    move-result-object v4

    const-string v5, "extra_from_notification"

    .line 7
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 8
    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p2

    const-string v6, "notification_opt_2"

    invoke-virtual {p2, v6}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v5, :cond_2

    .line 9
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/byazt/n/tt;->a(I)V

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    const-string v6, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/byazt/z/DownloadHandlerService;->tt(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "android.ss.intent.action.DOWNLOAD_OPEN"

    .line 13
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    invoke-static {p1, p2, v3, v4}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V

    goto/16 :goto_1

    :cond_5
    const-string v6, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    .line 15
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 17
    :cond_6
    invoke-static {p1, p2, v3, v4}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V

    .line 18
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->isDownloadOverStatus()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v1, "no_hide_notification"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_b

    .line 19
    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v1, "enable_notification_ui"

    invoke-virtual {p1, v1}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_7

    .line 20
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_b

    .line 21
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/n/tt;->c(I)V

    .line 22
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/n/tt;->a(I)V

    goto :goto_1

    :cond_8
    const-string v6, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 23
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 24
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/byazt/z/DownloadHandlerService;->ve(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V

    goto :goto_1

    :cond_9
    const-string p1, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 26
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/n/tt;->c(I)V

    goto :goto_1

    :cond_a
    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/byazt/z/DownloadHandlerService$1;

    invoke-direct {p2, p0}, Lcom/byazt/z/DownloadHandlerService$1;-><init>(Lcom/byazt/z/DownloadHandlerService;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v5

    :cond_b
    :goto_1
    return v0
.end method

.method private tt(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/zz/uj;->u(I)Lcom/byazt/c/eo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {v0, p2}, Lcom/byazt/c/eo;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-class v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    .line 30
    .line 31
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "extra_click_download_ids"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const/high16 v2, 0x10000000

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v1}, Lcom/byazt/n/tt;->c(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->updateDownloadTime()V

    .line 55
    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    const/4 v2, 0x7

    .line 60
    const-string v3, ""

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    move-object v0, p3

    .line 71
    invoke-interface/range {v0 .. v6}, Lcom/byazt/s/n;->c(IILjava/lang/String;IJ)V

    .line 72
    .line 73
    .line 74
    :cond_1
    if-eqz p4, :cond_2

    .line 75
    .line 76
    const/4 p1, 0x7

    .line 77
    const-string p3, ""

    .line 78
    .line 79
    invoke-interface {p4, p1, p2, p3, p3}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method private ve(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lcom/byazt/s/n;Lcom/byazt/c/yv;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    const-class v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    .line 8
    .line 9
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "extra_click_download_ids"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v1}, Lcom/byazt/n/tt;->c(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->updateDownloadTime()V

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x7

    .line 38
    const-string v3, ""

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    move-object v0, p3

    .line 49
    invoke-interface/range {v0 .. v6}, Lcom/byazt/s/n;->c(IILjava/lang/String;IJ)V

    .line 50
    .line 51
    .line 52
    :cond_0
    if-eqz p4, :cond_1

    .line 53
    .line 54
    const/4 p1, 0x7

    .line 55
    const-string p3, ""

    .line 56
    .line 57
    invoke-interface {p4, p1, p2, p3, p3}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    sget-object p2, Lcom/byazt/z/DownloadHandlerService;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string p3, "onStartCommand"

    .line 13
    .line 14
    invoke-static {p2, p3}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/byazt/z/DownloadHandlerService;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    return p1
.end method
