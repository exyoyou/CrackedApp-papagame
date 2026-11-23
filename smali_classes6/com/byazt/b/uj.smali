.class public Lcom/byazt/b/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0xf
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/u/x;

.field public final c:Lcom/byazt/b/sl;

.field public n:Lcom/byazt/u/x$c;

.field public tt:Lcom/byazt/zz/gt;

.field public volatile uj:Z

.field public volatile ve:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/b/uj$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/b/uj$1;-><init>(Lcom/byazt/b/uj;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/b/uj;->n:Lcom/byazt/u/x$c;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/byazt/b/uj;->a:Lcom/byazt/u/x;

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/b/sl;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/byazt/b/sl;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "fix_sigbus_downloader_db"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/byazt/zz/ve;->lo()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->pu()Lcom/byazt/zz/ve$c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/byazt/b/uj$2;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/byazt/b/uj$2;-><init>(Lcom/byazt/b/uj;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Lcom/byazt/zz/ve$c;->c(Lcom/byazt/zz/ve$c$c;)Lcom/byazt/zz/gt;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    new-instance v0, Lcom/byazt/wh/n;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/byazt/wh/n;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Lcom/byazt/wh/n;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/byazt/wh/n;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 76
    .line 77
    :goto_1
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    .line 79
    .line 80
    new-instance v0, Lcom/byazt/u/x;

    .line 81
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/byazt/b/uj;->n:Lcom/byazt/u/x$c;

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lcom/byazt/u/x;-><init>(Landroid/os/Looper;Lcom/byazt/u/x$c;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/byazt/b/uj;->a:Lcom/byazt/u/x;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/byazt/b/uj;->sp()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static synthetic c(Lcom/byazt/b/uj;)Lcom/byazt/b/sl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/b/uj;Lcom/byazt/zz/gt;)Lcom/byazt/zz/gt;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    return-object p1
.end method

.method private c(Lcom/byazt/t/DownloadInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 39
    invoke-static {p2}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 40
    invoke-interface {p2, p1}, Lcom/byazt/zz/u;->ve(Lcom/byazt/t/DownloadInfo;)Z

    return-void

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {p2, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    return-void

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {p2, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    :cond_3
    return-void
.end method

.method private da()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic tt(Lcom/byazt/b/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/b/uj;->da()V

    return-void
.end method

.method private ve(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/byazt/b/uj;->c(Lcom/byazt/t/DownloadInfo;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/zz/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    return-object v0
.end method

.method public a(I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->m(I)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->a(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->a(I)Z

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->a(I)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/byazt/b/sl;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    return-object v0
.end method

.method public c(II)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/sl;->c(II)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public c(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/b/sl;->c(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/byazt/b/uj;->c(Lcom/byazt/t/DownloadInfo;Z)V

    return-object p1
.end method

.method public c(IJLjava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/b/sl;->c(IJLjava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(IIII)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIII)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIII)V

    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIII)V

    return-void
.end method

.method public c(IIIJ)V
    .locals 9

    .line 20
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 22
    invoke-interface/range {v1 .. v6}, Lcom/byazt/zz/u;->c(IIIJ)V

    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/byazt/zz/da;->c(IIIJ)V

    return-void

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/byazt/zz/da;->c(IIIJ)V

    return-void
.end method

.method public c(IIJ)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/b/sl;->c(IIJ)V

    .line 15
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIJ)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIJ)V

    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIJ)V

    return-void
.end method

.method public c(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/sl;->c(ILjava/util/List;)V

    .line 45
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->tt(ILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v1, p1}, Lcom/byazt/b/sl;->c(Lcom/byazt/t/tt;)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/tt;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(ILjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;)Z"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/sl;->c(ILjava/util/Map;)Z

    .line 48
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->c(ILjava/util/Map;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result v0

    .line 33
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return v0
.end method

.method public da(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->da(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public i(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->i(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public i()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/b/uj;->uj:Z

    if-eqz v0, :cond_1

    const-string v0, "DefaultDownloadCache"

    const-string v1, "resumeUnCompleteTask: has resumed, return!!!"

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/b/uj;->uj:Z

    .line 5
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/byazt/zz/ve;->gr()Lcom/byazt/zz/t;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1}, Lcom/byazt/zz/t;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object v4, v2

    goto :goto_0

    :cond_4
    move-object v3, v2

    move-object v4, v3

    .line 10
    :goto_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v6}, Lcom/byazt/b/sl;->c()Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 14
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/byazt/t/DownloadInfo;

    if-eqz v10, :cond_5

    .line 16
    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 17
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_7

    return-void

    :cond_7
    const/4 v6, 0x0

    .line 19
    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 20
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-eqz v8, :cond_a

    .line 21
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/t/DownloadInfo;

    if-eqz v8, :cond_a

    .line 22
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result v9

    .line 23
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getStatusAtDbInit()I

    move-result v10

    if-lez v10, :cond_8

    const/16 v11, 0xb

    if-gt v10, v11, :cond_8

    .line 24
    invoke-static {}, Lcom/byazt/zz/ve;->sp()Lcom/byazt/zl/tt;

    move-result-object v10

    const/4 v11, -0x5

    .line 25
    invoke-static {v10, v8, v2, v11}, Lcom/byazt/zl/c;->c(Lcom/byazt/zl/tt;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 26
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 27
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 28
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v10

    const-string v11, "enable_notification_ui"

    invoke-virtual {v10, v11}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_9

    .line 29
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 30
    :cond_9
    invoke-virtual {v8, v7}, Lcom/byazt/t/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 31
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    if-eqz v4, :cond_c

    .line 32
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 33
    invoke-interface {v1, v4, v0}, Lcom/byazt/zz/t;->c(Ljava/util/List;I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    if-nez v0, :cond_1

    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting start!!!!"

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    .line 5
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting end!!!!"

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    return v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public n(I)Z
    .locals 1

    .line 11
    :try_start_0
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->yp(I)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->n(I)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->n(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->n(I)Z

    move-result p1

    return p1
.end method

.method public sp(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->sp(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public sp()V
    .locals 8

    .line 3
    sget-object v0, Lcom/byazt/ev/uj;->tt:Lcom/byazt/ev/uj;

    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/ev/uj;)V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v3}, Lcom/byazt/b/sl;->c()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 9
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/t/DownloadInfo;

    if-eqz v7, :cond_0

    .line 11
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v3}, Lcom/byazt/b/sl;->a()Landroid/util/SparseArray;

    move-result-object v3

    .line 13
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 14
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 16
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v2, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    new-instance v3, Lcom/byazt/b/uj$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/b/uj$3;-><init>(Lcom/byazt/b/uj;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/byazt/zz/gt;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public t(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->t(I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->t(I)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/byazt/b/sl;->c(ILjava/util/Map;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object v0
.end method

.method public tt(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public tt(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/b/sl;->tt(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/byazt/b/uj;->tt(ILjava/util/List;)V

    return-object p2
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0}, Lcom/byazt/b/sl;->tt()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tt(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/b/uj;->c(Lcom/byazt/t/DownloadInfo;)Z

    if-nez p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {p2, p1}, Lcom/byazt/b/sl;->ve(I)Ljava/util/List;

    move-result-object p2

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(ILjava/util/List;)V

    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->tt(ILjava/util/List;)V

    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->tt(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->c(Lcom/byazt/t/DownloadInfo;)Z

    return-void
.end method

.method public tt(Lcom/byazt/t/tt;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/tt;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->u(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->u(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public uj(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/b/sl;->uj(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/byazt/b/uj;->tt(ILjava/util/List;)V

    return-object p2
.end method

.method public uj(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->uj(I)V

    .line 4
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->z(I)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->uj(I)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->uj(I)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/b/uj;->ve:Z

    return v0
.end method

.method public ve(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/b/sl;->ve(IJ)Lcom/byazt/t/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/byazt/b/uj;->tt(ILjava/util/List;)V

    return-object p2
.end method

.method public ve(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->ve(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ve(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ve()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0}, Lcom/byazt/b/sl;->ve()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/byazt/zz/u;->a()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0}, Lcom/byazt/zz/da;->ve()V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    invoke-interface {v0}, Lcom/byazt/zz/da;->ve()V

    return-void
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/b/uj;->ve(Lcom/byazt/t/DownloadInfo;)V

    return-object p1
.end method

.method public x()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "task_resume_delay"

    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1388

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/byazt/b/uj;->a:Lcom/byazt/u/x;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/byazt/b/uj;->a:Lcom/byazt/u/x;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public yp(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj;->c:Lcom/byazt/b/sl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/b/sl;->yp(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/uj;->tt:Lcom/byazt/zz/gt;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->yp(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    return-object v0
.end method
