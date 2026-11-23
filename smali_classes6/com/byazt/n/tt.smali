.class public Lcom/byazt/n/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2e,
        0xd
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/Object;

.field public static volatile ve:Lcom/byazt/n/tt;


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/n/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/n/tt;->n:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/n/tt;->c:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/n/tt;->tt:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/n/tt;->uj:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 28
    .line 29
    return-void
.end method

.method public static c()Lcom/byazt/n/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/n/tt;->ve:Lcom/byazt/n/tt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/n/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/n/tt;->ve:Lcom/byazt/n/tt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/n/tt;

    invoke-direct {v1}, Lcom/byazt/n/tt;-><init>()V

    sput-object v1, Lcom/byazt/n/tt;->ve:Lcom/byazt/n/tt;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/n/tt;->ve:Lcom/byazt/n/tt;

    return-object v0
.end method

.method public static tt(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static ve(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->isDownloadOverStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getNotificationVisibility()I

    move-result p0

    invoke-static {p0}, Lcom/byazt/n/tt;->tt(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/n/tt;->uj(I)Lcom/byazt/n/c;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/n/tt;->ve(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/n/tt;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/byazt/n/tt;->tt(Lcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public c(IILandroid/app/Notification;)V
    .locals 9

    .line 15
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/byazt/n/tt;->tt:Ljava/util/Map;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/byazt/n/tt;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 20
    monitor-exit v1

    return-void

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/byazt/n/tt;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/byazt/n/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_1
    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    .line 25
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    .line 27
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    const-string p2, "enable_target_34"

    invoke-virtual {p1, p2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 29
    invoke-static {}, Lcom/byazt/l/c;->c()Lcom/byazt/l/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/l/c;->c(Landroid/content/Intent;)V

    return-void

    .line 30
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 31
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 32
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    const-string p2, "enable_target_34"

    invoke-virtual {p1, p2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 33
    invoke-static {}, Lcom/byazt/l/c;->c()Lcom/byazt/l/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/l/c;->c(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/n/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/byazt/n/c;->c()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isDownloadOverStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p1, v1}, Lcom/byazt/t/DownloadInfo;->setNotificationVisibility(I)V

    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public n(I)Lcom/byazt/n/c;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/byazt/n/c;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public tt()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/n/c;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/byazt/n/tt;->ve(Lcom/byazt/t/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/n/tt;->a(I)V

    :cond_0
    return-void
.end method

.method public uj(I)Lcom/byazt/n/c;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/byazt/n/c;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/n/tt;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "removeNotificationId "

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/byazt/x/c;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public ve(I)V
    .locals 4

    const-string v0, "enable_target_34"

    .line 2
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/byazt/n/DownloadNotificationService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v3, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/l/c;->c()Lcom/byazt/l/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/l/c;->c(Landroid/content/Intent;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    invoke-static {}, Lcom/byazt/l/c;->c()Lcom/byazt/l/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/l/c;->c(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
