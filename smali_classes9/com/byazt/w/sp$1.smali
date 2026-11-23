.class public final Lcom/byazt/w/sp$1;
.super Lcom/byazt/t/c$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/t/DownloadTask;)Lcom/byazt/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/t/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/t/c$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getDepend()Lcom/byazt/c/yp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/yp;)Lcom/byazt/c/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-static {p1}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadTask;->getDownloadListenerSize(Lcom/byazt/ev/a;)I

    move-result p1

    return p1
.end method

.method public c(II)Lcom/byazt/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-static {p1}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/byazt/t/DownloadTask;->getDownloadListenerByIndex(Lcom/byazt/ev/a;I)Lcom/byazt/c/IDownloadListener;

    move-result-object p2

    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p2, p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/byazt/t/DownloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public da()Lcom/byazt/c/da;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/gr;)Lcom/byazt/c/da;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i()Lcom/byazt/c/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getDiskSpaceHandler()Lcom/byazt/c/rh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/rh;)Lcom/byazt/c/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public n()Lcom/byazt/c/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getInterceptor()Lcom/byazt/c/IDownloadInterceptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadInterceptor;)Lcom/byazt/c/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public sl()Lcom/byazt/c/sp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getFileUriProvider()Lcom/byazt/c/IDownloadFileUriProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/c/sp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public sp()Lcom/byazt/c/rl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getForbiddenHandler()Lcom/byazt/c/gu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/gu;)Lcom/byazt/c/rl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public t()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getDownloadCompleteHandlers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public tt(I)Lcom/byazt/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-static {p1}, Lcom/byazt/w/a;->n(I)Lcom/byazt/ev/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadTask;->getSingleDownloadListener(Lcom/byazt/ev/a;)Lcom/byazt/c/IDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;

    move-result-object p1

    return-object p1
.end method

.method public tt()Lcom/byazt/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getChunkStrategy()Lcom/byazt/zz/x;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/zz/x;)Lcom/byazt/c/n;

    move-result-object v0

    return-object v0
.end method

.method public uj()Lcom/byazt/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getNotificationClickCallback()Lcom/byazt/c/eo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/eo;)Lcom/byazt/c/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ve(I)Lcom/byazt/c/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadTask;->getDownloadCompleteHandlerByIndex(I)Lcom/byazt/c/u;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/u;)Lcom/byazt/c/t;

    move-result-object p1

    return-object p1
.end method

.method public ve()Lcom/byazt/c/zm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getNotificationEventListener()Lcom/byazt/c/yv;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/yv;)Lcom/byazt/c/zm;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/byazt/c/or;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$1;->c:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getRetryDelayTimeCalculator()Lcom/byazt/zz/my;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/zz/my;)Lcom/byazt/c/or;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
