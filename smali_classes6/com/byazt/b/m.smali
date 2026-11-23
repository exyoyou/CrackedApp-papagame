.class public Lcom/byazt/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/u;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x82
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/b/c;

.field public final tt:Lcom/byazt/zz/da;

.field public final uj:Z

.field public final ve:Lcom/byazt/zz/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/b/m;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/zz/ve;->d()Lcom/byazt/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 4
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/zz/ve;->yv()Lcom/byazt/zz/z;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->p()Lcom/byazt/zz/z;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    .line 7
    :goto_0
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "service_alive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/b/m;->uj:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->uj(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0}, Lcom/byazt/zz/da;->ve()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p1, p2}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
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

    .line 9
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/b/c;->tt()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->n(I)Z

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/byazt/zz/ve;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lcom/byazt/zz/ve;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/c/nb;

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v1, p2, p1}, Lcom/byazt/c/nb;->c(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIII)V

    return-void
.end method

.method public c(IIIJ)V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/da;->c(IIIJ)V

    return-void
.end method

.method public c(IIJ)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/da;->c(IIJ)V

    return-void
.end method

.method public c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/b/c;->tt(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    :cond_0
    return-void
.end method

.method public c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/b/c;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V

    :cond_0
    return-void
.end method

.method public c(IJ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/b/c;->tt(IJ)V

    :cond_0
    return-void
.end method

.method public c(ILandroid/app/Notification;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/z;->c(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public c(ILcom/byazt/c/yv;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/c;->c(ILcom/byazt/c/yv;)V

    :cond_0
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

    .line 27
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->c(ILjava/util/List;)V

    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/c;->c(IZ)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/c/nb;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/c/nb;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadTask;)V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/byazt/zz/z;->tt(Lcom/byazt/t/DownloadTask;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/byazt/m/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v2, v3, v4}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(ZZ)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p2}, Lcom/byazt/zz/z;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/w/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x2000000

    .line 17
    invoke-static {v1}, Lcom/byazt/w/c;->c(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/byazt/b/m;->tt(IZ)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/byazt/b/m;->uj(IZ)V

    :cond_2
    :goto_0
    return v0
.end method

.method public da(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->u(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public i(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public my(I)Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->da(I)Lcom/byazt/c/IDownloadFileUriProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public n(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/byazt/w/a;->tt(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public n(Ljava/lang/String;)Ljava/util/List;
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

    .line 8
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0}, Lcom/byazt/zz/da;->uj()Z

    move-result v0

    return v0
.end method

.method public nu(I)Lcom/byazt/c/yv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->i(I)Lcom/byazt/c/yv;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public rh(I)Lcom/byazt/c/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->x(I)Lcom/byazt/c/eo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/zz/ve;->pf()Lcom/byazt/c/eo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    return-object p1
.end method

.method public sl(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/x/c;->c(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sp()Z
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/byazt/b/m;->uj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/zz/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public sp(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->c(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startService()V
    .locals 0

    return-void
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->sl(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 7
    invoke-static {p1, p2}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/b/m;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/b/c;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    :cond_0
    return-void
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

    .line 18
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/da;->tt(ILjava/util/List;)V

    return-void
.end method

.method public tt(IZ)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/c;->tt(IZ)V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->tt(Lcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadTask;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1}, Lcom/byazt/zz/z;->ve(Lcom/byazt/t/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->tt(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/b/m;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/byazt/zz/z;->tt()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->yp(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public u(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/zz/uj;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public uj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/zz/da;->tt()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 7
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->sp(I)Z

    :cond_0
    return-void
.end method

.method public uj(IZ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/byazt/b/c;->ve(IZ)V

    :cond_0
    return-void
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

    .line 3
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->a(I)Z

    :cond_0
    return-void
.end method

.method public ve(IZ)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/zz/uj;->c(IZ)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/zz/ve;->hd()Z

    move-result v0

    return v0
.end method

.method public ve(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->c:Lcom/byazt/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/b/c;->uj(I)Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public yp(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->n(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/m;->tt:Lcom/byazt/zz/da;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/zz/da;->uj(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
