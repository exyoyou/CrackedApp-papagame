.class public Lcom/byazt/zz/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zz/ve$c;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/byazt/b/c;

.field public static final aw:I

.field public static volatile b:Z

.field public static bm:I

.field public static bx:I

.field public static volatile c:Landroid/content/Context;

.field public static volatile cu:Lcom/byazt/hs/a;

.field public static volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/nb;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile da:Lcom/byazt/hs/IDownloadHttpService;

.field public static volatile eo:Z

.field public static volatile gr:Lcom/byazt/zz/sp;

.field public static volatile gt:Ljava/util/concurrent/ExecutorService;

.field public static volatile gu:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile h:Lcom/byazt/c/p;

.field public static final hd:I

.field public static volatile i:Lcom/byazt/zz/ve$c;

.field public static final ic:I

.field public static kp:Lcom/byazt/zl/ve;

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/sl;",
            ">;"
        }
    .end annotation
.end field

.field public static final lo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static lr:Z

.field public static lt:Z

.field public static volatile m:Ljava/util/concurrent/ExecutorService;

.field public static volatile md:Lcom/byazt/zl/tt;

.field public static volatile my:Ljava/util/concurrent/ExecutorService;

.field public static volatile n:Lcom/byazt/c/eo;

.field public static final nb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile nu:Ljava/util/concurrent/ExecutorService;

.field public static volatile or:Lcom/byazt/hs/a;

.field public static volatile p:Lcom/byazt/zz/nu;

.field public static pf:Z

.field public static pu:I

.field public static volatile qp:Lcom/byazt/zz/rl;

.field public static volatile qy:Ljava/util/concurrent/ExecutorService;

.field public static volatile rh:Ljava/util/concurrent/ExecutorService;

.field public static volatile rl:Ljava/util/concurrent/ExecutorService;

.field public static volatile sl:Lcom/byazt/hs/x;

.field public static volatile sp:Lcom/byazt/zz/z;

.field public static final sv:I

.field public static volatile t:Lcom/byazt/hs/IDownloadHttpService;

.field public static tk:Lcom/byazt/zz/rh;

.field public static to:Z

.field public static volatile tt:Lcom/byazt/zz/da;

.field public static volatile u:Lcom/byazt/hs/x;

.field public static volatile uj:Lcom/byazt/zz/x;

.field public static volatile ve:Lcom/byazt/zz/sl;

.field public static volatile x:Lcom/byazt/zz/z;

.field public static volatile yp:Lcom/byazt/zz/t;

.field public static volatile yv:Lcom/byazt/zz/my;

.field public static volatile z:Ljava/util/concurrent/ExecutorService;

.field public static volatile zb:Lokhttp3/OkHttpClient;

.field public static volatile zm:Lcom/byazt/zz/DownloadReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/zz/ve;->d:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/byazt/zz/ve;->eo:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/byazt/zz/ve;->zb:Lokhttp3/OkHttpClient;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/byazt/zz/ve;->nb:Ljava/util/List;

    .line 20
    .line 21
    sput-boolean v0, Lcom/byazt/zz/ve;->pf:Z

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    add-int/2addr v1, v2

    .line 33
    sput v1, Lcom/byazt/zz/ve;->sv:I

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    mul-int/lit8 v3, v3, 0x2

    .line 44
    .line 45
    add-int/2addr v3, v2

    .line 46
    sput v3, Lcom/byazt/zz/ve;->aw:I

    .line 47
    .line 48
    sput v1, Lcom/byazt/zz/ve;->ic:I

    .line 49
    .line 50
    sput v1, Lcom/byazt/zz/ve;->hd:I

    .line 51
    .line 52
    const/16 v1, 0x2000

    .line 53
    .line 54
    sput v1, Lcom/byazt/zz/ve;->bm:I

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v1, Lcom/byazt/zz/ve;->l:Ljava/util/List;

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lcom/byazt/zz/ve;->lo:Ljava/util/List;

    .line 69
    .line 70
    sput-boolean v2, Lcom/byazt/zz/ve;->lt:Z

    .line 71
    .line 72
    sput-boolean v0, Lcom/byazt/zz/ve;->to:Z

    .line 73
    .line 74
    sput-boolean v0, Lcom/byazt/zz/ve;->b:Z

    .line 75
    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/byazt/hs/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->sl:Lcom/byazt/hs/x;

    return-object v0
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/byazt/zz/ve;->rh:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static aw()Lcom/byazt/zz/rl;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/zz/rl$c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/zz/rl$c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

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
    sget-object v0, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    .line 25
    .line 26
    return-object v0
.end method

.method public static bm()Lcom/byazt/zl/ve;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->kp:Lcom/byazt/zl/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/zz/ve$3;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/zz/ve$3;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/zz/ve;->kp:Lcom/byazt/zl/ve;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/zz/ve;->kp:Lcom/byazt/zl/ve;

    .line 13
    .line 14
    return-object v0
.end method

.method public static bx()Lcom/byazt/zz/sp;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/tt;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/tt;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

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
    sget-object v0, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    .line 25
    .line 26
    return-object v0
.end method

.method public static c(Lcom/byazt/t/DownloadInfo;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 127
    invoke-static {}, Lcom/byazt/zz/ve;->h()Lcom/byazt/zz/sl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/zz/sl;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;IZ",
            "Lcom/byazt/t/DownloadInfo;",
            ")",
            "Lcom/byazt/hs/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move v7, p4

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 78
    invoke-static {}, Lcom/byazt/zz/ve;->uj()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->x()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_1

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, p1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, p1

    goto :goto_3

    :cond_1
    :goto_1
    move v5, p0

    move-object v6, p1

    move-object v8, p3

    .line 80
    :try_start_1
    invoke-interface {v0, p0, p1, p3}, Lcom/byazt/hs/IDownloadHttpService;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/byazt/hs/i;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p5, :cond_2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v4, v1, v3

    const-string v8, "get"

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v8

    move v7, p4

    move-object v8, v9

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/byazt/zl/c;->c(Lcom/byazt/hs/sp;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/byazt/t/DownloadInfo;)V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object v2, v0

    .line 82
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz p5, :cond_3

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v4, v9, v3

    const-string v9, "get"

    move-object v2, p1

    move-object v3, p2

    move-object v6, v9

    move v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/byazt/zl/c;->c(Lcom/byazt/hs/sp;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/byazt/t/DownloadInfo;)V

    :cond_3
    throw v0

    .line 84
    :cond_4
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpService not exist, netLib = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3fe

    invoke-direct {v0, v2, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static c(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;IZ",
            "Lcom/byazt/t/DownloadInfo;",
            ")",
            "Lcom/byazt/hs/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    .line 70
    :goto_0
    new-instance v1, Lcom/byazt/t/ve;

    const-string v2, "ss_d_request_host_ip_114"

    move-object/from16 v10, p3

    invoke-direct {v1, v2, v10}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    if-nez p0, :cond_2

    const/4 v0, 0x2

    move-object/from16 v1, p4

    goto :goto_1

    :cond_2
    move-object/from16 v1, p4

    move/from16 v0, p5

    .line 71
    :goto_1
    invoke-static {v0}, Lcom/byazt/zz/ve;->c(I)[I

    move-result-object v2

    .line 72
    array-length v11, v2

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v0, v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_6

    aget v7, v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v1

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 73
    :try_start_0
    invoke-static/range {v3 .. v9}, Lcom/byazt/zz/ve;->c(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 74
    invoke-virtual/range {p7 .. p7}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/byazt/w/a;->sp(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/byazt/w/a;->ve(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dcach::http exception 304, throw excepiton, not retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/x/c;->c(Ljava/lang/String;)V

    .line 76
    throw v3

    :cond_4
    :goto_3
    move-object v0, v3

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    return-object v12

    .line 77
    :cond_7
    throw v0
.end method

.method public static c(ZILjava/lang/String;Ljava/util/List;)Lcom/byazt/hs/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/hs/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 67
    invoke-static/range {v0 .. v7}, Lcom/byazt/zz/ve;->c(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/hs/sp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/hs/sp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, p1, v0, v0, v1}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/sp;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/sp;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;IZ",
            "Lcom/byazt/t/DownloadInfo;",
            ")",
            "Lcom/byazt/hs/sp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-static {p2}, Lcom/byazt/zz/ve;->c(I)[I

    move-result-object p2

    .line 87
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p2, v2

    .line 88
    :try_start_0
    invoke-static {p0, p1, v4, p3, p4}, Lcom/byazt/zz/ve;->tt(Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/sp;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v4

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-object v1

    .line 89
    :cond_2
    throw v3
.end method

.method public static c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->gt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized c()V
    .locals 3

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-boolean v1, Lcom/byazt/zz/ve;->pf:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/byazt/zz/ve;->zm:Lcom/byazt/zz/DownloadReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    sget-object v2, Lcom/byazt/zz/ve;->zm:Lcom/byazt/zz/DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 39
    sput-boolean v1, Lcom/byazt/zz/ve;->pf:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    :try_start_1
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 121
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    move-result-object p0

    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/byazt/g/c;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 124
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static c(Lcom/byazt/c/eo;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 119
    sput-object p0, Lcom/byazt/zz/ve;->n:Lcom/byazt/c/eo;

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/c/nb;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/byazt/zz/ve;->d:Ljava/util/List;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lcom/byazt/c/p;)V
    .locals 0

    .line 116
    sput-object p0, Lcom/byazt/zz/ve;->h:Lcom/byazt/c/p;

    .line 117
    invoke-static {}, Lcom/byazt/k/c;->c()V

    return-void
.end method

.method public static c(Lcom/byazt/c/sl;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/byazt/zz/ve;->l:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 47
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    .line 50
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lcom/byazt/ev/uj;)V
    .locals 4

    .line 52
    sget-object v0, Lcom/byazt/zz/ve;->l:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/c/sl;

    if-eqz v2, :cond_0

    .line 56
    sget-object v3, Lcom/byazt/ev/uj;->tt:Lcom/byazt/ev/uj;

    if-eq p0, v3, :cond_0

    .line 57
    sget-object v3, Lcom/byazt/ev/uj;->ve:Lcom/byazt/ev/uj;

    if-ne p0, v3, :cond_0

    .line 58
    invoke-interface {v2}, Lcom/byazt/c/sl;->c()V

    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Lcom/byazt/ev/uj;->ve:Lcom/byazt/ev/uj;

    if-ne p0, v1, :cond_2

    .line 60
    sget-object p0, Lcom/byazt/zz/ve;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 61
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lcom/byazt/hs/IDownloadHttpService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 110
    sput-object p0, Lcom/byazt/zz/ve;->da:Lcom/byazt/hs/IDownloadHttpService;

    .line 111
    :cond_0
    sget-object p0, Lcom/byazt/zz/ve;->da:Lcom/byazt/hs/IDownloadHttpService;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/byazt/zz/ve;->lr:Z

    return-void
.end method

.method public static c(Lcom/byazt/hs/x;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 112
    sput-object p0, Lcom/byazt/zz/ve;->sl:Lcom/byazt/hs/x;

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/t/DownloadTask;I)V
    .locals 1

    .line 62
    sget-object p0, Lcom/byazt/zz/ve;->lo:Ljava/util/List;

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 64
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static c(Lcom/byazt/zl/tt;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 115
    sput-object p0, Lcom/byazt/zz/ve;->md:Lcom/byazt/zl/tt;

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/zl/ve;)V
    .locals 0

    .line 129
    sput-object p0, Lcom/byazt/zz/ve;->kp:Lcom/byazt/zl/ve;

    return-void
.end method

.method public static declared-synchronized c(Lcom/byazt/zz/DownloaderBuilder;)V
    .locals 3

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/byazt/zz/ve;->b:Z

    if-eqz v1, :cond_0

    const-string p0, "DownloadComponentManager"

    const-string v1, "component has init"

    .line 3
    invoke-static {p0, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/byazt/zz/ve;->eo:Z

    .line 6
    invoke-static {p0}, Lcom/byazt/zz/ve;->ve(Lcom/byazt/zz/DownloaderBuilder;)V

    .line 7
    sget-object p0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    if-nez p0, :cond_1

    .line 8
    new-instance p0, Lcom/byazt/b/uj;

    invoke-direct {p0}, Lcom/byazt/b/uj;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    .line 9
    :cond_1
    sget-object p0, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

    if-nez p0, :cond_2

    .line 10
    new-instance p0, Lcom/byazt/b/x;

    invoke-direct {p0}, Lcom/byazt/b/x;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

    .line 11
    :cond_2
    sget-object p0, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    if-nez p0, :cond_3

    .line 12
    sget-object p0, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    if-eqz p0, :cond_3

    .line 13
    sget-object p0, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    invoke-interface {p0}, Lcom/byazt/zz/ve$c;->c()Lcom/byazt/zz/z;

    move-result-object p0

    sput-object p0, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    .line 14
    :cond_3
    sget-object p0, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    if-nez p0, :cond_4

    .line 15
    new-instance p0, Lcom/byazt/b/i;

    invoke-direct {p0}, Lcom/byazt/b/i;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    .line 16
    :cond_4
    sget-object p0, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

    if-nez p0, :cond_5

    .line 17
    new-instance p0, Lcom/byazt/b/n;

    invoke-direct {p0}, Lcom/byazt/b/n;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

    .line 18
    :cond_5
    sget-object p0, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    if-nez p0, :cond_6

    .line 19
    new-instance p0, Lcom/byazt/b/ve;

    invoke-direct {p0}, Lcom/byazt/b/ve;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    .line 20
    :cond_6
    sget-object p0, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    if-nez p0, :cond_7

    .line 21
    new-instance p0, Lcom/byazt/b/tt;

    invoke-direct {p0}, Lcom/byazt/b/tt;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    .line 22
    :cond_7
    sget-object p0, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

    if-nez p0, :cond_8

    .line 23
    new-instance p0, Lcom/byazt/b/da;

    invoke-direct {p0}, Lcom/byazt/b/da;-><init>()V

    sput-object p0, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

    .line 24
    :cond_8
    sget p0, Lcom/byazt/zz/ve;->bx:I

    if-lez p0, :cond_9

    sget v2, Lcom/byazt/zz/ve;->sv:I

    if-le p0, v2, :cond_a

    .line 25
    :cond_9
    sget p0, Lcom/byazt/zz/ve;->sv:I

    sput p0, Lcom/byazt/zz/ve;->bx:I

    .line 26
    :cond_a
    invoke-static {}, Lcom/byazt/zz/ve;->lt()V

    .line 27
    sget-boolean p0, Lcom/byazt/zz/ve;->eo:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_b

    if-nez v1, :cond_b

    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result p0

    if-nez p0, :cond_b

    .line 28
    invoke-static {v2}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p0

    invoke-interface {p0}, Lcom/byazt/zz/u;->startService()V

    goto :goto_0

    .line 29
    :cond_b
    invoke-static {}, Lcom/byazt/w/a;->uj()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 30
    invoke-static {}, Lcom/byazt/zz/ve;->u()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 31
    new-instance v1, Lcom/byazt/zz/ve$1;

    invoke-direct {v1}, Lcom/byazt/zz/ve$1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_c
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 33
    invoke-static {p0}, Lcom/byazt/w/a;->uj(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    :cond_d
    :goto_0
    invoke-static {}, Lcom/byazt/zz/ve;->or()V

    .line 35
    sput-boolean v2, Lcom/byazt/zz/ve;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Lcom/byazt/zz/da;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 113
    sput-object p0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/zz/rh;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static c(Lcom/byazt/zz/sl;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 114
    sput-object p0, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    :cond_0
    return-void
.end method

.method private static c(Lcom/byazt/zz/sp;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 120
    sput-object p0, Lcom/byazt/zz/ve;->gr:Lcom/byazt/zz/sp;

    :cond_0
    return-void
.end method

.method public static declared-synchronized c(Lcom/byazt/zz/t;)V
    .locals 1

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    sput-object p0, Lcom/byazt/zz/ve;->yp:Lcom/byazt/zz/t;

    .line 95
    sget-object p0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    instance-of p0, p0, Lcom/byazt/b/uj;

    if-eqz p0, :cond_0

    .line 96
    sget-object p0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    check-cast p0, Lcom/byazt/b/uj;

    .line 97
    invoke-virtual {p0}, Lcom/byazt/b/uj;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 98
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static c(Lcom/byazt/zz/ve$c;)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIndependentServiceCreator::creator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wjd"

    invoke-static {v1, v0}, Lcom/byazt/x/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sput-object p0, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    return-void
.end method

.method private static c(Lcom/byazt/zz/x;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 118
    sput-object p0, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/byazt/zz/ve;->c(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 106
    invoke-static {}, Lcom/byazt/w/a;->uj()Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;)V"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/byazt/zz/ve;->nb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    monitor-enter v0

    .line 102
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 99
    sput-object p0, Lcom/byazt/zz/ve;->rl:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 104
    sput-boolean p0, Lcom/byazt/zz/ve;->to:Z

    return-void
.end method

.method private static c(I)[I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 90
    filled-new-array {v1, v0}, [I

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    filled-new-array {v1}, [I

    move-result-object p0

    return-object p0

    .line 93
    :cond_2
    filled-new-array {v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static cu()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/zz/ve;->lt:Z

    .line 2
    .line 3
    return v0
.end method

.method public static d()Lcom/byazt/b/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/n;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/n;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

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
    sget-object v0, Lcom/byazt/zz/ve;->a:Lcom/byazt/b/c;

    .line 25
    .line 26
    return-object v0
.end method

.method public static da()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/byazt/zz/ve;->to:Z

    .line 6
    .line 7
    const-string v2, "switch_not_auto_boot_service"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public static eo()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/zz/ve;->pu:I

    .line 2
    .line 3
    return v0
.end method

.method public static declared-synchronized gr()Lcom/byazt/zz/t;
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/ve;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->yp:Lcom/byazt/zz/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static gt()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 5

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->gu:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->gu:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/n;

    .line 13
    .line 14
    new-instance v2, Lcom/byazt/u/c;

    .line 15
    .line 16
    const-string v3, "DownloadThreadPool-Schedule"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v2, v3, v4}, Lcom/byazt/u/c;-><init>(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v2}, Lcom/byazt/jtc/n;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/byazt/zz/ve;->gu:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/zz/ve;->gu:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    return-object v0
.end method

.method public static gu()Lcom/byazt/hs/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->cu:Lcom/byazt/hs/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->cu:Lcom/byazt/hs/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/zz/ve$2;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/zz/ve$2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->cu:Lcom/byazt/hs/a;

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
    sget-object v0, Lcom/byazt/zz/ve;->cu:Lcom/byazt/hs/a;

    .line 25
    .line 26
    return-object v0
.end method

.method public static h()Lcom/byazt/zz/sl;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

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
    sget-object v0, Lcom/byazt/zz/ve;->ve:Lcom/byazt/zz/sl;

    .line 25
    .line 26
    return-object v0
.end method

.method public static declared-synchronized hd()Z
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/ve;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/byazt/zz/ve;->lr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static i()Lcom/byazt/hs/x;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->u:Lcom/byazt/hs/x;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->u:Lcom/byazt/hs/x;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->u:Lcom/byazt/hs/x;

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
    sget-object v0, Lcom/byazt/zz/ve;->u:Lcom/byazt/hs/x;

    .line 25
    .line 26
    return-object v0
.end method

.method public static declared-synchronized ic()Landroid/content/Context;
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/ve;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static l()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/zz/ve;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static lo()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "supportMultiProc::="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "wjd"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/byazt/x/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v3
.end method

.method public static lr()Lcom/byazt/zz/rh;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->tk:Lcom/byazt/zz/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method private static lt()V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->zm:Lcom/byazt/zz/DownloadReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/zz/DownloadReceiver;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/zz/DownloadReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/zz/ve;->zm:Lcom/byazt/zz/DownloadReceiver;

    .line 11
    .line 12
    :cond_0
    sget-boolean v0, Lcom/byazt/zz/ve;->pf:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/byazt/zz/ve;->c:Landroid/content/Context;

    .line 28
    .line 29
    sget-object v2, Lcom/byazt/zz/ve;->zm:Lcom/byazt/zz/DownloadReceiver;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/byazt/zz/ve;->pf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static m()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->nu:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->nu:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/uj;

    .line 13
    .line 14
    sget v4, Lcom/byazt/zz/ve;->ic:I

    .line 15
    .line 16
    const-wide/16 v5, 0xf

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/byazt/u/c;

    .line 26
    .line 27
    const-string v2, "DownloadThreadPool-mix-fixed"

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    invoke-direct {v9, v2, v10}, Lcom/byazt/u/c;-><init>(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    move v3, v4

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v1, Lcom/byazt/zz/ve;->nu:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_1
    sget-object v0, Lcom/byazt/zz/ve;->nu:Ljava/util/concurrent/ExecutorService;

    .line 54
    .line 55
    return-object v0
.end method

.method public static md()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->nb:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static my()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->zb:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->zb:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/zz/ve;->rl()Lokhttp3/OkHttpClient$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/byazt/zz/ve;->zb:Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/zz/ve;->zb:Lokhttp3/OkHttpClient;

    .line 28
    .line 29
    return-object v0
.end method

.method public static n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/c/nb;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->d:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->d:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static n(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    sput-object p0, Lcom/byazt/zz/ve;->nu:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static nb()Lcom/byazt/zz/x;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/ve;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/ve;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

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
    sget-object v0, Lcom/byazt/zz/ve;->uj:Lcom/byazt/zz/x;

    .line 25
    .line 26
    return-object v0
.end method

.method public static nu()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->rl:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->rl:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/uj;

    .line 13
    .line 14
    sget v4, Lcom/byazt/zz/ve;->aw:I

    .line 15
    .line 16
    const-wide/16 v5, 0xf

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/byazt/u/c;

    .line 26
    .line 27
    const-string v2, "DownloadThreadPool-chunk-fixed"

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    invoke-direct {v9, v2, v10}, Lcom/byazt/u/c;-><init>(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    move v3, v4

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v1, Lcom/byazt/zz/ve;->rl:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_1
    sget-object v0, Lcom/byazt/zz/ve;->rl:Ljava/util/concurrent/ExecutorService;

    .line 54
    .line 55
    return-object v0
.end method

.method public static or()V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ev/n;->ve:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "oppo"

    .line 10
    .line 11
    sput-object v0, Lcom/byazt/ev/n;->ve:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/byazt/ev/n;->tt:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static p()Lcom/byazt/zz/z;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/byazt/zz/ve$c;->c()Lcom/byazt/zz/z;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/zz/ve;->x:Lcom/byazt/zz/z;

    .line 26
    .line 27
    return-object v0
.end method

.method public static pf()Lcom/byazt/c/eo;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->n:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static pu()Lcom/byazt/zz/ve$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->i:Lcom/byazt/zz/ve$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static declared-synchronized qp()I
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/ve;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/byazt/zz/ve;->bm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static qy()Lcom/byazt/hs/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->or:Lcom/byazt/hs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static rh()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->gt:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->gt:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/uj;

    .line 13
    .line 14
    sget v4, Lcom/byazt/zz/ve;->hd:I

    .line 15
    .line 16
    const-wide/16 v5, 0xf

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/byazt/u/c;

    .line 26
    .line 27
    const-string v2, "DownloadThreadPool-db-fixed"

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    invoke-direct {v9, v2, v10}, Lcom/byazt/u/c;-><init>(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    move v3, v4

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v1, Lcom/byazt/zz/ve;->gt:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_1
    sget-object v0, Lcom/byazt/zz/ve;->gt:Ljava/util/concurrent/ExecutorService;

    .line 54
    .line 55
    return-object v0
.end method

.method public static rl()Lokhttp3/OkHttpClient$Builder;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v2, 0x7530

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/byazt/zz/ve;->qy:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lokhttp3/Dispatcher;

    .line 45
    .line 46
    sget-object v2, Lcom/byazt/zz/ve;->qy:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized sl()Lcom/byazt/zz/nu;
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/zz/ve;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->p:Lcom/byazt/zz/nu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static sp()Lcom/byazt/zl/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->md:Lcom/byazt/zl/tt;

    return-object v0
.end method

.method private static sp(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/byazt/zz/ve;->my:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static sv()Lcom/byazt/zz/my;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/da;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/da;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

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
    sget-object v0, Lcom/byazt/zz/ve;->yv:Lcom/byazt/zz/my;

    .line 25
    .line 26
    return-object v0
.end method

.method public static t()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->z:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->z:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/jtc/uj;

    .line 13
    .line 14
    sget v4, Lcom/byazt/zz/ve;->sv:I

    .line 15
    .line 16
    const-wide/16 v5, 0xf

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/byazt/u/c;

    .line 26
    .line 27
    const-string v2, "DownloadThreadPool-cpu-fixed"

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    invoke-direct {v9, v2, v10}, Lcom/byazt/u/c;-><init>(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    move v3, v4

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v1, Lcom/byazt/zz/ve;->z:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_1
    sget-object v0, Lcom/byazt/zz/ve;->z:Ljava/util/concurrent/ExecutorService;

    .line 54
    .line 55
    return-object v0
.end method

.method private static tt(Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/sp;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;IZ",
            "Lcom/byazt/t/DownloadInfo;",
            ")",
            "Lcom/byazt/hs/sp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move v7, p2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 26
    invoke-static {}, Lcom/byazt/zz/ve;->a()Lcom/byazt/hs/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->i()Lcom/byazt/hs/x;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p3, :cond_1

    .line 27
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, p0

    goto :goto_3

    :cond_1
    :goto_1
    move-object v5, p0

    move-object v6, p1

    .line 28
    :try_start_1
    invoke-interface {v0, p0, p1}, Lcom/byazt/hs/x;->c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/hs/sp;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v8, v1, v3

    const-string v10, "head"

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, v6

    move-wide v4, v8

    move-object v6, v10

    move v7, p2

    move-object v8, v11

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Lcom/byazt/zl/c;->c(Lcom/byazt/hs/sp;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/byazt/t/DownloadInfo;)V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object v2, v0

    .line 30
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz p3, :cond_3

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-string v11, "head"

    move-object v2, p0

    move-object v3, v6

    move-wide v4, v9

    move-object v6, v11

    move v7, p2

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Lcom/byazt/zl/c;->c(Lcom/byazt/hs/sp;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/byazt/t/DownloadInfo;)V

    :cond_3
    throw v0

    .line 32
    :cond_4
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpService not exist, netLib = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3fe

    invoke-direct {v0, v2, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized tt()V
    .locals 5

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/byazt/zz/ve;->eo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_1
    sput-boolean v1, Lcom/byazt/zz/ve;->eo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/byazt/b/DownloadHandleService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/zz/u;->startService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 12
    :try_start_3
    sput-boolean v2, Lcom/byazt/zz/ve;->eo:Z

    .line 13
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static tt(I)V
    .locals 0

    if-lez p0, :cond_0

    .line 38
    sput p0, Lcom/byazt/zz/ve;->bx:I

    :cond_0
    return-void
.end method

.method public static tt(Lcom/byazt/c/sl;)V
    .locals 2

    .line 15
    sget-object v0, Lcom/byazt/zz/ve;->l:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v0

    return-void

    .line 19
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static tt(Lcom/byazt/t/DownloadTask;I)V
    .locals 1

    .line 21
    sget-object p0, Lcom/byazt/zz/ve;->lo:Ljava/util/List;

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static declared-synchronized tt(Lcom/byazt/zz/DownloaderBuilder;)V
    .locals 1

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/byazt/zz/ve;->ve(Lcom/byazt/zz/DownloaderBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static tt(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/byazt/zz/ve;->tt(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static tt(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 35
    invoke-static {}, Lcom/byazt/w/a;->uj()Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->u()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 33
    sput-object p0, Lcom/byazt/zz/ve;->qy:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private static tt(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/byazt/zz/ve;->lt:Z

    return-void
.end method

.method public static u()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->m:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/zz/ve;->m:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static uj()Lcom/byazt/hs/IDownloadHttpService;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->da:Lcom/byazt/hs/IDownloadHttpService;

    return-object v0
.end method

.method private static uj(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/byazt/zz/ve;->m:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private static ve(Lcom/byazt/zz/DownloaderBuilder;)V
    .locals 2

    if-eqz p0, :cond_1b

    .line 1
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadCache()Lcom/byazt/zz/da;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadCache()Lcom/byazt/zz/da;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/da;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getIdGenerator()Lcom/byazt/zz/sl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getIdGenerator()Lcom/byazt/zz/sl;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/sl;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkCntCalculator()Lcom/byazt/zz/x;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkCntCalculator()Lcom/byazt/zz/x;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/x;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getNotificationClickCallback()Lcom/byazt/c/eo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getNotificationClickCallback()Lcom/byazt/c/eo;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/c/eo;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->tt(I)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getHttpService()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getHttpService()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/IDownloadHttpService;)V

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getHeadHttpService()Lcom/byazt/hs/x;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getHeadHttpService()Lcom/byazt/hs/x;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/x;)V

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/byazt/zz/t;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/byazt/zz/t;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/t;)V

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/util/concurrent/ExecutorService;)V

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->uj(Ljava/util/concurrent/ExecutorService;)V

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->n(Ljava/util/concurrent/ExecutorService;)V

    .line 25
    :cond_b
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 27
    :cond_c
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->sp(Ljava/util/concurrent/ExecutorService;)V

    .line 29
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->x(Ljava/util/concurrent/ExecutorService;)V

    .line 31
    :cond_e
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 33
    :cond_f
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->tt(Ljava/util/concurrent/ExecutorService;)V

    .line 35
    :cond_10
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 36
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Ljava/util/List;)V

    .line 37
    :cond_11
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMonitorConfig()Lcom/byazt/zz/nu;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 38
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getMonitorConfig()Lcom/byazt/zz/nu;

    move-result-object v0

    sput-object v0, Lcom/byazt/zz/ve;->p:Lcom/byazt/zz/nu;

    .line 39
    :cond_12
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_13

    .line 40
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    sput v0, Lcom/byazt/zz/ve;->bm:I

    .line 41
    :cond_13
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/byazt/zz/sp;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 42
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/byazt/zz/sp;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zz/sp;)V

    .line 43
    :cond_14
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->isDownloadInMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/byazt/zz/ve;->eo:Z

    .line 45
    :cond_15
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    sput v0, Lcom/byazt/zz/ve;->pu:I

    .line 47
    :cond_16
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadSetting()Lcom/byazt/c/p;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 48
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadSetting()Lcom/byazt/c/p;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/c/p;)V

    .line 49
    :cond_17
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadDns()Lcom/byazt/hs/a;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 50
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadDns()Lcom/byazt/hs/a;

    move-result-object v0

    sput-object v0, Lcom/byazt/zz/ve;->or:Lcom/byazt/hs/a;

    .line 51
    :cond_18
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getTTNetHandler()Lcom/byazt/zz/rl;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 52
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getTTNetHandler()Lcom/byazt/zz/rl;

    move-result-object v0

    .line 53
    sput-object v0, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    invoke-interface {v0}, Lcom/byazt/zz/rl;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    sget-object v0, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    invoke-interface {v0}, Lcom/byazt/zz/rl;->tt()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/IDownloadHttpService;)V

    .line 55
    sget-object v0, Lcom/byazt/zz/ve;->qp:Lcom/byazt/zz/rl;

    invoke-interface {v0}, Lcom/byazt/zz/rl;->ve()Lcom/byazt/hs/x;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/x;)V

    goto :goto_0

    .line 56
    :cond_19
    invoke-static {}, Lcom/byazt/zz/ve;->x()Lcom/byazt/hs/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/IDownloadHttpService;)V

    .line 57
    invoke-static {}, Lcom/byazt/zz/ve;->i()Lcom/byazt/hs/x;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/hs/x;)V

    .line 58
    :cond_1a
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->needAutoRefreshUnSuccessTask()Z

    move-result v0

    invoke-static {v0}, Lcom/byazt/zz/ve;->tt(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadMonitorListener()Lcom/byazt/zl/tt;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 60
    invoke-virtual {p0}, Lcom/byazt/zz/DownloaderBuilder;->getDownloadMonitorListener()Lcom/byazt/zl/tt;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/zl/tt;)V

    :cond_1b
    return-void
.end method

.method public static ve(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/byazt/w/a;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->rh()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static ve(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 62
    sput-object p0, Lcom/byazt/zz/ve;->z:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static declared-synchronized ve()Z
    .locals 2

    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-boolean v1, Lcom/byazt/zz/ve;->eo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static x()Lcom/byazt/hs/IDownloadHttpService;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->t:Lcom/byazt/hs/IDownloadHttpService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/zz/ve;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->t:Lcom/byazt/hs/IDownloadHttpService;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/b/sp;

    invoke-direct {v1}, Lcom/byazt/b/sp;-><init>()V

    sput-object v1, Lcom/byazt/zz/ve;->t:Lcom/byazt/hs/IDownloadHttpService;

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
    sget-object v0, Lcom/byazt/zz/ve;->t:Lcom/byazt/hs/IDownloadHttpService;

    return-object v0
.end method

.method private static x(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 7
    sput-object p0, Lcom/byazt/zz/ve;->gt:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static yp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->rh:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/zz/ve;->rh:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->m()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static yv()Lcom/byazt/zz/z;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/x;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/x;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

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
    sget-object v0, Lcom/byazt/zz/ve;->sp:Lcom/byazt/zz/z;

    .line 25
    .line 26
    return-object v0
.end method

.method public static z()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->my:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/zz/ve;->my:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->m()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static zb()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->h:Lcom/byazt/c/p;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/zz/ve;->h:Lcom/byazt/c/p;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/c/p;->c()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/byazt/zz/ve;->h:Lcom/byazt/c/p;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/c/p;->c()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ev/n;->i:Lorg/json/JSONObject;

    .line 22
    .line 23
    return-object v0
.end method

.method public static zm()Lcom/byazt/zz/da;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/zz/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/b/uj;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/b/uj;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

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
    sget-object v0, Lcom/byazt/zz/ve;->tt:Lcom/byazt/zz/da;

    .line 25
    .line 26
    return-object v0
.end method
