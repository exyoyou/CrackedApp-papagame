.class public Lcom/byazt/di/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x48
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/di/da;


# instance fields
.field public a:J

.field public n:Lcom/byazt/pk/tt;

.field public final tt:Lcom/byazt/d/c;

.field public final uj:Lcom/byazt/pk/c;

.field public final ve:Lcom/byazt/di/x;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/di/da;->ve:Lcom/byazt/di/x;

    .line 4
    new-instance v0, Lcom/byazt/di/a;

    invoke-direct {v0}, Lcom/byazt/di/a;-><init>()V

    iput-object v0, p0, Lcom/byazt/di/da;->tt:Lcom/byazt/d/c;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/di/da;->a:J

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/di/da;->tt(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/byazt/di/c;->c()Lcom/byazt/di/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/di/da;->uj:Lcom/byazt/pk/c;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/byazt/di/da$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/di/da;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/di/da;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/di/da;->c:Lcom/byazt/di/da;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/di/da;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/di/da;->c:Lcom/byazt/di/da;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/di/da$1;

    invoke-direct {v1, p0}, Lcom/byazt/di/da$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/di/da;->c:Lcom/byazt/di/da;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/di/da;)Lcom/byazt/di/da;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/di/da;->c:Lcom/byazt/di/da;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/di/da;)Lcom/byazt/di/x;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/di/da;->x()Lcom/byazt/di/x;

    move-result-object p0

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 7

    .line 2
    invoke-static {p1}, Lcom/byazt/gq/t;->c(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 4
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nn/a;->tt()V

    .line 5
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v1

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "misc_config"

    new-instance v4, Lcom/byazt/sd/sp;

    invoke-direct {v4}, Lcom/byazt/sd/sp;-><init>()V

    new-instance v5, Lcom/byazt/sd/a;

    invoke-direct {v5, p1}, Lcom/byazt/sd/a;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/byazt/di/ve;

    invoke-direct {v6}, Lcom/byazt/di/ve;-><init>()V

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/s/uj;Lcom/byazt/s/n;Lcom/byazt/s/i;)V

    .line 6
    new-instance v0, Lcom/byazt/sd/uj;

    invoke-direct {v0}, Lcom/byazt/sd/uj;-><init>()V

    .line 7
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/z/uj;->c(Lcom/byazt/s/x;)V

    .line 8
    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/zz/Downloader;->registerDownloadCacheSyncListener(Lcom/byazt/c/sl;)V

    .line 9
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p1

    new-instance v0, Lcom/byazt/gq/yp;

    invoke-direct {v0}, Lcom/byazt/gq/yp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/z/uj;->c(Lcom/byazt/zz/rh;)V

    .line 10
    new-instance p1, Lcom/byazt/sd/n;

    invoke-direct {p1}, Lcom/byazt/sd/n;-><init>()V

    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zl/ve;)V

    .line 11
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p1

    invoke-static {}, Lcom/byazt/xk/ve;->c()Lcom/byazt/xk/ve;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/z/uj;->c(Lcom/byazt/s/sl;)V

    return-void
.end method

.method private x()Lcom/byazt/di/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da;->ve:Lcom/byazt/di/x;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/gq/t;->yp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lcom/byazt/d/c;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/di/da;->tt:Lcom/byazt/d/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/d/c;
    .locals 2

    .line 9
    invoke-static {}, Lcom/byazt/di/sp;->c()Lcom/byazt/di/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/sp;->tt()Lcom/byazt/ou/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/byazt/ou/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/ou/a;->tt(Ljava/lang/String;)Lcom/byazt/d/c;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/di/da;->tt:Lcom/byazt/d/c;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/byazt/di/da;->tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 13
    new-instance v6, Lcom/byazt/di/da$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/di/da$4;-><init>(Lcom/byazt/di/da;Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    invoke-static {v6}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/yq/c;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/byazt/di/da;->x()Lcom/byazt/di/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/di/x;->c(Lcom/byazt/yq/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 17
    new-instance v0, Lcom/byazt/di/da$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/di/da$2;-><init>(Lcom/byazt/di/da;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 15
    new-instance v8, Lcom/byazt/di/da$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/di/da$6;-><init>(Lcom/byazt/di/da;Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    invoke-static {v8}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)V
    .locals 10
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 16
    new-instance v9, Lcom/byazt/di/da$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/byazt/di/da$7;-><init>(Lcom/byazt/di/da;Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    invoke-static {v9}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 14
    new-instance v10, Lcom/byazt/di/da$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/byazt/di/da$5;-><init>(Lcom/byazt/di/da;Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/OnItemClickListener;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    invoke-static {v10}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 18
    new-instance v0, Lcom/byazt/di/da$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/di/da$3;-><init>(Lcom/byazt/di/da;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/byazt/dm/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()Lcom/byazt/pk/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da;->n:Lcom/byazt/pk/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/di/tt;->c()Lcom/byazt/di/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/di/da;->n:Lcom/byazt/pk/tt;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/di/da;->n:Lcom/byazt/pk/tt;

    .line 12
    .line 13
    return-object v0
.end method

.method public sp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/di/n;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public tt()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/byazt/di/da;->a:J

    return-wide v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 2

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public uj()Lcom/byazt/pk/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/di/da;->uj:Lcom/byazt/pk/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/di/da;->a:J

    .line 6
    .line 7
    return-void
.end method
