.class public Lcom/byazt/z/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0xf
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static final c:Ljava/lang/String; = "uj"

.field public static sp:Z

.field public static volatile tt:Lcom/byazt/z/uj;

.field public static x:Z


# instance fields
.field public da:I

.field public gt:Lcom/byazt/c/zb;

.field public i:Ljava/util/concurrent/Future;

.field public m:Lcom/byazt/s/x;

.field public my:Lcom/byazt/c/h;

.field public n:Lcom/byazt/z/DownloadReceiver;

.field public nu:Lcom/byazt/s/sp;

.field public qy:Lcom/byazt/s/ve;

.field public rh:Lcom/byazt/s/sl;

.field public rl:Lcom/byazt/s/z;

.field public sl:Z

.field public t:Z

.field public u:Lcom/byazt/s/uj;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public yp:Lcom/byazt/s/n;

.field public z:Lcom/byazt/s/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/z/DownloadReceiver;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/z/DownloadReceiver;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/z/uj;->sl:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/byazt/z/uj;->t:Z

    .line 15
    .line 16
    return-void
.end method

.method private c(Lcom/byazt/s/a;)Lcom/byazt/c/yv;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    new-instance v0, Lcom/byazt/z/uj$6;

    invoke-direct {v0, p0, p1}, Lcom/byazt/z/uj$6;-><init>(Lcom/byazt/z/uj;Lcom/byazt/s/a;)V

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/byazt/t/DownloadInfo;
    .locals 1

    if-eqz p1, :cond_1

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/zz/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "User-Agent"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/t/ve;

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v3}, Lcom/byazt/t/ve;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/byazt/t/ve;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {v3}, Lcom/byazt/t/ve;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 139
    :cond_1
    new-instance v4, Lcom/byazt/t/ve;

    invoke-virtual {v3}, Lcom/byazt/t/ve;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/byazt/t/ve;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 141
    new-instance p1, Lcom/byazt/t/ve;

    sget-object v2, Lcom/byazt/j/c;->c:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private c(Lcom/byazt/t/DownloadTask;IZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->download()I

    .line 131
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1, p2}, Lcom/byazt/t/DownloadInfo;->setAntiHijackErrorCode(I)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 133
    invoke-virtual {p1, p3}, Lcom/byazt/t/DownloadInfo;->setSavePathRedirected(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/z/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/z/uj;->my()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/z/uj;Lcom/byazt/t/DownloadTask;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/z/uj;->c(Lcom/byazt/t/DownloadTask;IZ)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-static {p0, p1, v0}, Lcom/byazt/z/ve;->c(Landroid/content/Context;IZ)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private gt()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/z/uj$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/z/uj$3;-><init>(Lcom/byazt/z/uj;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh$tt;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private my()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/byazt/z/uj;->sp:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "file"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 40
    .line 41
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 49
    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    sput-boolean v1, Lcom/byazt/z/uj;->sp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_2
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "registerDownloadReceiver mIsRegistered:"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-boolean v2, Lcom/byazt/z/uj;->sp:Z

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw v1
.end method

.method public static synthetic rh()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sl()Lcom/byazt/z/uj;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/z/uj;->tt:Lcom/byazt/z/uj;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/z/uj;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/z/uj;->tt:Lcom/byazt/z/uj;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/z/uj;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/z/uj;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/z/uj;->tt:Lcom/byazt/z/uj;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/z/uj;->tt:Lcom/byazt/z/uj;

    .line 25
    .line 26
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/z/uj;)Lcom/byazt/s/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/z/uj;->z:Lcom/byazt/s/i;

    return-object p0
.end method

.method private tt(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 12
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/t/DownloadInfo;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->isSavePathRedirected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private tt(I)V
    .locals 3

    .line 4
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "app_install_keep_receiver_time_s"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/z/uj;->da:I

    .line 5
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryUnRegisterTempAppInstallDownloadReceiver mAppInstallReceiverKeepTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/z/uj;->da:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/byazt/z/uj;->da:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 7
    iput p1, p0, Lcom/byazt/z/uj;->da:I

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/z/uj;->i:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    :cond_2
    :goto_0
    new-instance p1, Lcom/byazt/z/uj$2;

    invoke-direct {p1, p0}, Lcom/byazt/z/uj$2;-><init>(Lcom/byazt/z/uj;)V

    iget v0, p0, Lcom/byazt/z/uj;->da:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/zz/ve;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/z/uj;->i:Ljava/util/concurrent/Future;

    return-void
.end method

.method private ve(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    sget-boolean v0, Lcom/byazt/z/uj;->a:Z

    if-nez v0, :cond_1

    const-string v0, "application/vnd.android.package-archive"

    .line 3
    invoke-static {v0}, Lcom/byazt/ev/n;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    .line 5
    new-instance p1, Lcom/byazt/r/tt;

    invoke-direct {p1}, Lcom/byazt/r/tt;-><init>()V

    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/t;)V

    .line 6
    iget-boolean p1, p0, Lcom/byazt/z/uj;->t:Z

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/byazt/z/uj$1;

    invoke-direct {p1, p0}, Lcom/byazt/z/uj$1;-><init>(Lcom/byazt/z/uj;)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/zz/ve;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/byazt/z/uj;->my()V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/byazt/z/uj;->gt()V

    const/4 p1, 0x1

    .line 10
    sput-boolean p1, Lcom/byazt/z/uj;->a:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/s/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->nu:Lcom/byazt/s/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/z/n;)I
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz v8, :cond_19

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v10, 0x1

    .line 20
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->uj()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/byazt/z/uj;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->c()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v9

    .line 23
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->my()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->bx()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->tt()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v6}, Lcom/byazt/z/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0xff

    if-le v4, v11, :cond_4

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v2

    .line 31
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->t()Ljava/lang/String;

    move-result-object v4

    const-string v11, ".apk"

    .line 32
    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->t()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/byazt/z/ve;->ve(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v4, "application/vnd.android.package-archive"

    .line 33
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->ve()Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->ve()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 35
    invoke-static {}, Lcom/byazt/z/ve;->tt()Ljava/lang/String;

    move-result-object v11

    :cond_7
    move-object v15, v11

    .line 36
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto/16 :goto_9

    .line 37
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->l()Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v11, v1

    .line 39
    :cond_9
    invoke-static {v11, v15}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->os()Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/byazt/k/c;->c(Lorg/json/JSONObject;)Lcom/byazt/k/c;

    move-result-object v11

    const-string v12, "resume_task_override_settings"

    invoke-virtual {v11, v12}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 41
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_a

    .line 42
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/byazt/t/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lcom/byazt/z/n;->c(Lorg/json/JSONObject;)Lcom/byazt/z/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    :cond_a
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->os()Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/byazt/k/c;->c(ILorg/json/JSONObject;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->pf()Z

    move-result v11

    .line 45
    invoke-static {v14}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v12

    const-string v13, "modify_force"

    invoke-virtual {v12, v13, v10}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_b

    if-nez v11, :cond_b

    .line 46
    invoke-static {v15, v2}, Lcom/byazt/w/a;->uj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v12

    if-nez v12, :cond_b

    const/4 v13, 0x1

    goto :goto_1

    :cond_b
    move v13, v11

    .line 47
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->da()Lcom/byazt/c/IDownloadListener;

    move-result-object v11

    if-nez v11, :cond_d

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->n()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->a()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 49
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->yp()Lcom/byazt/n/c;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 50
    new-instance v11, Lcom/byazt/p/tt;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->yp()Lcom/byazt/n/c;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/byazt/p/tt;-><init>(Lcom/byazt/n/c;)V

    :cond_d
    move v10, v13

    move/from16 v19, v14

    move-object/from16 v20, v15

    goto :goto_2

    .line 51
    :cond_e
    new-instance v18, Lcom/byazt/p/tt;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->sl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v18

    move v10, v13

    move v13, v14

    move/from16 v19, v14

    move-object v14, v3

    move-object/from16 v20, v15

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/byazt/p/tt;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 52
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->aw()Lcom/byazt/c/yp;

    move-result-object v12

    if-nez v12, :cond_f

    .line 53
    new-instance v12, Lcom/byazt/z/uj$4;

    invoke-direct {v12, v7}, Lcom/byazt/z/uj$4;-><init>(Lcom/byazt/z/uj;)V

    .line 54
    :cond_f
    invoke-static {}, Lcom/byazt/zz/ve;->md()Ljava/util/List;

    move-result-object v13

    .line 55
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    .line 56
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/byazt/c/u;

    .line 57
    invoke-virtual {v8, v14}, Lcom/byazt/z/n;->c(Lcom/byazt/c/u;)Lcom/byazt/z/n;

    goto :goto_3

    .line 58
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->sl()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    :try_start_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 60
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 61
    :cond_11
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    :goto_4
    const-string v15, "auto_install_with_notification"

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->sp()Z

    move-result v9

    invoke-virtual {v14, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "auto_install_without_notification"

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->a()Z

    move-result v15

    invoke-virtual {v14, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->n()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->a()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_5

    :cond_12
    const/4 v9, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_14

    .line 66
    invoke-static/range {v19 .. v19}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v14

    const-string v15, "enable_notification_ui"

    invoke-virtual {v14, v15}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_14

    .line 67
    invoke-static {}, Lcom/byazt/p/ve;->c()Lcom/byazt/p/ve;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->kk()Ljava/lang/String;

    move-result-object v15

    move/from16 v8, v19

    invoke-virtual {v14, v8, v15}, Lcom/byazt/p/ve;->c(ILjava/lang/String;)V

    goto :goto_7

    :cond_14
    move/from16 v8, v19

    .line 68
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/byazt/zz/tt;->with(Landroid/content/Context;)Lcom/byazt/t/DownloadTask;

    move-result-object v14

    .line 69
    invoke-virtual {v14, v1}, Lcom/byazt/t/DownloadTask;->url(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->tx()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/byazt/t/DownloadTask;->backUpUrls(Ljava/util/List;)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Lcom/byazt/t/DownloadTask;->name(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Lcom/byazt/t/DownloadTask;->title(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    move-object/from16 v2, v20

    .line 73
    invoke-virtual {v1, v2}, Lcom/byazt/t/DownloadTask;->savePath(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->x()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/t/DownloadTask;->onlyWifi(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/byazt/t/DownloadTask;->extraHeaders(Ljava/util/List;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v12}, Lcom/byazt/t/DownloadTask;->depend(Lcom/byazt/c/yp;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->gu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->retryCount(I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->gr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->backUpUrlRetryCount(I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v9}, Lcom/byazt/t/DownloadTask;->showNotification(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v13}, Lcom/byazt/t/DownloadTask;->extra(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v4}, Lcom/byazt/t/DownloadTask;->mimeType(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->minProgressTimeMsInterval(I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->eo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->maxProgressCount(I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->i()Lcom/byazt/c/IDownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->mainThreadListener(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v11}, Lcom/byazt/t/DownloadTask;->notificationListener(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->ic()Lcom/byazt/s/a;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/byazt/z/uj;->c(Lcom/byazt/s/a;)Lcom/byazt/c/yv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->notificationEventListener(Lcom/byazt/c/yv;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v10}, Lcom/byazt/t/DownloadTask;->force(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->nu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->autoResumed(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->rh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->showNotificationForAutoResumed(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->z()Lcom/byazt/zz/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->chunkStategy(Lcom/byazt/zz/x;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->m()Lcom/byazt/zz/sp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->chunkAdjustCalculator(Lcom/byazt/zz/sp;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needHttpsToHttpRetry(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->packageName(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->md5(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->qy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/DownloadTask;->expectFileLength(J)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->zm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needRetryDelay(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->yv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->retryDelayTimeArray(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needDefaultHttpServiceBackUp(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->md()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needReuseFirstConnection(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->zb()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needReuseChunkRunnable(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->or()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needIndependentProcess(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->nb()Lcom/byazt/ev/EnqueueType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->enqueueType(Lcom/byazt/ev/EnqueueType;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->sv()Lcom/byazt/c/gr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->monitorDepend(Lcom/byazt/c/gr;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->h()Lcom/byazt/zz/my;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator(Lcom/byazt/zz/my;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->cu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->headConnectionAvailable(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->hd()Lcom/byazt/c/IDownloadFileUriProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->fileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->v()Lcom/byazt/c/rh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->diskSpaceHandler(Lcom/byazt/c/rh;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->qp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needChunkDowngradeRetry(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->bm()Lcom/byazt/c/eo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->notificationClickCallback(Lcom/byazt/c/eo;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->os()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->downloadSetting(Lorg/json/JSONObject;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->iconUrl(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->to()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->needSDKMonitor(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->tk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->monitorScene(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->kp()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->extraMonitorStatus([I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->pu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->executorGroup(I)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->lt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/DownloadTask;->throttleNetSpeed(J)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->distinctDirectory(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->taskKey(Ljava/lang/String;)Lcom/byazt/t/DownloadTask;

    move-result-object v0

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->setAutoInstall(Z)Lcom/byazt/t/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->lr()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->lr()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/byazt/t/DownloadTask;->setDownloadCompleteHandlers(Ljava/util/List;)Lcom/byazt/t/DownloadTask;

    :cond_15
    if-eqz v4, :cond_17

    if-eqz v9, :cond_16

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->lo()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/byazt/p/uj;->c()Z

    move-result v0

    if-nez v0, :cond_16

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/byazt/z/uj$5;

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/z/uj$5;-><init>(Lcom/byazt/z/uj;Ljava/lang/String;Lcom/byazt/t/DownloadTask;IZ)V

    invoke-static {v0, v9}, Lcom/byazt/p/uj;->c(Landroid/app/Activity;Lcom/byazt/s/yp;)V

    goto :goto_8

    .line 124
    :cond_16
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    const-string v1, "notification permission need not request, start download :"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v8}, Lcom/byazt/p/uj;->c(I)V

    .line 126
    invoke-direct {v7, v4, v5, v6}, Lcom/byazt/z/uj;->c(Lcom/byazt/t/DownloadTask;IZ)V

    .line 127
    invoke-virtual {v4}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_17
    :goto_8
    return v8

    :cond_18
    :goto_9
    const/4 v1, 0x0

    return v1

    :catchall_2
    move-exception v0

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/z/n;->sv()Lcom/byazt/c/gr;

    move-result-object v1

    new-instance v2, Lcom/byazt/m/BaseException;

    const-string v3, "addDownloadTask"

    invoke-static {v0, v3}, Lcom/byazt/w/a;->tt(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3eb

    invoke-direct {v2, v4, v3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    .line 129
    sget-object v1, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "add download task error:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_19
    :goto_a
    const/4 v4, 0x0

    return v4
.end method

.method public c()Lcom/byazt/s/ve;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/z/uj;->qy:Lcom/byazt/s/ve;

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 4

    .line 145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/z/uj;->i()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 148
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 149
    invoke-static {p1}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    .line 150
    :cond_3
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v2

    const-string v3, "get_download_info_by_list"

    invoke-virtual {v2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/byazt/z/uj;->tt(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 152
    sget-object p2, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "getAppDownloadInfo error:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/byazt/z/ve;->ve(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p2, "application/vnd.android.package-archive"

    :cond_0
    return-object p2
.end method

.method public c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/byazt/zz/Downloader;->getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 3

    .line 160
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "enable_app_install_receiver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/z/uj;->t()V

    .line 162
    invoke-direct {p0, p1}, Lcom/byazt/z/uj;->tt(I)V

    return-void
.end method

.method public c(Landroid/content/Context;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 14
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->pause(I)V

    return-void

    .line 15
    :pswitch_2
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->resume(I)V

    return-void

    :pswitch_3
    const/4 p3, 0x1

    .line 16
    invoke-static {p1, p2, p3}, Lcom/byazt/z/ve;->c(Landroid/content/Context;IZ)I

    goto :goto_0

    .line 17
    :pswitch_4
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->restart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void

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
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/s/uj;Lcom/byazt/s/n;Lcom/byazt/s/i;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 9
    iput-object p3, p0, Lcom/byazt/z/uj;->u:Lcom/byazt/s/uj;

    :cond_0
    if-eqz p4, :cond_1

    .line 10
    iput-object p4, p0, Lcom/byazt/z/uj;->yp:Lcom/byazt/s/n;

    :cond_1
    if-eqz p5, :cond_2

    .line 11
    iput-object p5, p0, Lcom/byazt/z/uj;->z:Lcom/byazt/s/i;

    .line 12
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/z/uj;->ve(Landroid/content/Context;)V

    return-void
.end method

.method public c(Lcom/byazt/c/h;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/byazt/z/uj;->my:Lcom/byazt/c/h;

    return-void
.end method

.method public c(Lcom/byazt/c/zb;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/byazt/z/uj;->gt:Lcom/byazt/c/zb;

    return-void
.end method

.method public c(Lcom/byazt/s/sl;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/z/uj;->rh:Lcom/byazt/s/sl;

    return-void
.end method

.method public c(Lcom/byazt/s/sp;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/z/uj;->nu:Lcom/byazt/s/sp;

    return-void
.end method

.method public c(Lcom/byazt/s/ve;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/z/uj;->qy:Lcom/byazt/s/ve;

    return-void
.end method

.method public c(Lcom/byazt/s/x;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/byazt/z/uj;->m:Lcom/byazt/s/x;

    return-void
.end method

.method public c(Lcom/byazt/s/z;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/byazt/z/uj;->rl:Lcom/byazt/s/z;

    return-void
.end method

.method public c(Lcom/byazt/zz/rh;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/zz/Downloader;->setReserveWifiStatusListener(Lcom/byazt/zz/rh;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/byazt/z/uj;->uj:Ljava/lang/String;

    return-void
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/zz/Downloader;->getGlobalSaveDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public m()Lcom/byazt/c/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->my:Lcom/byazt/c/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Lcom/byazt/c/zb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->gt:Lcom/byazt/c/zb;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->tt()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "package_flag_config"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public t()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enable_app_install_receiver"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "disable app install receiver"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    sget-boolean v3, Lcom/byazt/z/uj;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    :try_start_1
    invoke-direct {p0, v1}, Lcom/byazt/z/uj;->tt(I)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_2
    new-instance v3, Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v4, "package"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 60
    .line 61
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    sput-boolean v2, Lcom/byazt/z/uj;->x:Z

    .line 65
    .line 66
    iget-object v2, p0, Lcom/byazt/z/uj;->rl:Lcom/byazt/s/z;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/byazt/s/z;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    :try_start_3
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/byazt/z/uj;->tt(I)V

    .line 79
    .line 80
    .line 81
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "tryRegisterTempAppInstallDownloadReceiver mIsAppInstallRegistered:"

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-boolean v2, Lcom/byazt/z/uj;->sp:Z

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_1
    move-exception v2

    .line 105
    :try_start_5
    invoke-direct {p0, v1}, Lcom/byazt/z/uj;->tt(I)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :catchall_2
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    throw v1
.end method

.method public tt()Lcom/byazt/s/uj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/z/uj;->u:Lcom/byazt/s/uj;

    return-object v0
.end method

.method public tt(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/byazt/zz/Downloader;->getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/zz/Downloader;->setDefaultSavePath(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/byazt/z/uj;->sp:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/byazt/z/uj;->n:Lcom/byazt/z/DownloadReceiver;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/byazt/z/uj;->x:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/z/uj;->rl:Lcom/byazt/s/z;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/byazt/s/z;->tt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_1
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 36
    sput-boolean v1, Lcom/byazt/z/uj;->sp:Z

    .line 37
    .line 38
    sput-boolean v1, Lcom/byazt/z/uj;->x:Z

    .line 39
    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    sget-object v0, Lcom/byazt/z/uj;->c:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "registerDownloadReceiver unRegisterDownloadReceiver"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v1
.end method

.method public uj()Lcom/byazt/s/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->z:Lcom/byazt/s/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/s/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->yp:Lcom/byazt/s/n;

    return-object v0
.end method

.method public x()Lcom/byazt/s/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->rh:Lcom/byazt/s/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Lcom/byazt/s/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/uj;->m:Lcom/byazt/s/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/byazt/zz/rh;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/zz/Downloader;->getReserveWifiStatusListener()Lcom/byazt/zz/rh;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
