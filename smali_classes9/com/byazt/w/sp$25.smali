.class public final Lcom/byazt/w/sp$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x714
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/i;


# direct methods
.method public constructor <init>(Lcom/byazt/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->i(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCanceled(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->a(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/i;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFirstStart(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->sp(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFirstSuccess(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->x(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPause(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->uj(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPrepare(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->c(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onProgress(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->ve(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRetry(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/i;->tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRetryDelay(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/c/i;->ve(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStart(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->tt(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSuccessed(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/sp$25;->c:Lcom/byazt/c/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/c/i;->n(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
