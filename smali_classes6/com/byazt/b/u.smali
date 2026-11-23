.class public Lcom/byazt/b/u;
.super Lcom/byazt/zz/i$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x43
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "u"


# instance fields
.field public final tt:Lcom/byazt/zz/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/zz/i$c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/b/m;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lcom/byazt/b/m;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->a(I)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->tt()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(Ljava/lang/String;Ljava/lang/String;)I

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->c()V

    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(I)V

    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(II)V

    return-void
.end method

.method public c(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIII)V

    return-void
.end method

.method public c(IIIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 32
    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/u;->c(IIIJ)V

    return-void
.end method

.method public c(IIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIJ)V

    return-void
.end method

.method public c(IILcom/byazt/c/i;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {p3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/u;->tt(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

    return-void
.end method

.method public c(IILcom/byazt/c/i;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {p3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/byazt/zz/u;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V

    return-void
.end method

.method public c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/zz/u;->c(IJ)V

    return-void
.end method

.method public c(ILandroid/app/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(ILandroid/app/Notification;)V

    return-void
.end method

.method public c(ILcom/byazt/c/zm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/zm;)Lcom/byazt/c/yv;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(ILcom/byazt/c/yv;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(ILjava/util/List;)V

    return-void
.end method

.method public c(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(IZ)V

    return-void
.end method

.method public c(Lcom/byazt/c/qp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/qp;)Lcom/byazt/c/nb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/c/nb;)V

    return-void
.end method

.method public c(Lcom/byazt/t/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/t/c;)Lcom/byazt/t/DownloadTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Lcom/byazt/t/DownloadTask;)V

    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/tt;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/util/List;)V

    return-void
.end method

.method public c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 24
    invoke-interface {v0, v1, p1}, Lcom/byazt/zz/u;->c(ZZ)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public da(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->da(I)V

    .line 7
    .line 8
    .line 9
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->i(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public m(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->m(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public my(I)Lcom/byazt/c/sp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->my(I)Lcom/byazt/c/IDownloadFileUriProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/c/sp;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public n(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->n(I)J

    move-result-wide v0

    return-wide v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->a()V

    return-void
.end method

.method public nu(I)Lcom/byazt/c/zm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->nu(I)Lcom/byazt/c/yv;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/yv;)Lcom/byazt/c/zm;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public rh(I)Lcom/byazt/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->rh(I)Lcom/byazt/c/eo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/eo;)Lcom/byazt/c/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public sl(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->t(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public sp(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->sp(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public t(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->sl(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->uj()Ljava/util/List;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tt(IILcom/byazt/c/i;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {p3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/byazt/zz/u;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->c(ILjava/util/List;)V

    return-void
.end method

.method public tt(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(IZ)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public tt(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(I)Z

    move-result p1

    return p1
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public u(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/zz/uj;->tt(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public uj(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->uj(I)V

    return-void
.end method

.method public uj(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/zz/uj;->tt(IZ)V

    return-void
.end method

.method public uj()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->n()Z

    move-result v0

    return v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ve(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(I)V

    return-void
.end method

.method public ve(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(IZ)V

    return-void
.end method

.method public ve()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zz/u;->ve()Z

    move-result v0

    return v0
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->x(I)Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public yp(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->yp(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public z(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/b/u;->tt:Lcom/byazt/zz/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->z(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
