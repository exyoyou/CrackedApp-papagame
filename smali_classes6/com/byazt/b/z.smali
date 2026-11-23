.class public Lcom/byazt/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/u;
.implements Lcom/byazt/zz/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x85
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "z"


# instance fields
.field public volatile tt:Lcom/byazt/zz/i;

.field public uj:Lcom/byazt/zz/u;

.field public ve:Lcom/byazt/zz/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/zz/z<",
            "Lcom/byazt/zz/CSJIndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/b/m;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/b/m;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/zz/ve;->p()Lcom/byazt/zz/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/byazt/b/z;->ve:Lcom/byazt/zz/z;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/byazt/zz/z;->c(Lcom/byazt/zz/yp;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->a(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0}, Lcom/byazt/zz/u;->a()V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0}, Lcom/byazt/zz/i;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 14
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

    .line 10
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0}, Lcom/byazt/zz/i;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->c(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIII)V

    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/i;->c(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IIIJ)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/byazt/zz/u;->c(IIIJ)V

    return-void

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/byazt/zz/i;->c(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IIJ)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/u;->c(IIJ)V

    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zz/i;->c(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/byazt/zz/i;->tt(IILcom/byazt/c/i;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V
    .locals 8

    .line 22
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/byazt/zz/i;->c(IILcom/byazt/c/i;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IJ)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/zz/i;->c(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(ILandroid/app/Notification;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 30
    sget-object p1, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string p2, "startForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string v1, "aidlService.startForeground, id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->c(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(ILcom/byazt/c/yv;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-static {p2}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/yv;)Lcom/byazt/c/zm;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->c(ILcom/byazt/c/zm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 41
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->tt(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->c(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/os/IBinder;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/byazt/zz/i$c;->c(Landroid/os/IBinder;)Lcom/byazt/zz/i;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 70
    invoke-static {}, Lcom/byazt/w/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lcom/byazt/b/z$1;

    invoke-direct {p1, p0}, Lcom/byazt/b/z$1;-><init>(Lcom/byazt/b/z;)V

    invoke-virtual {p0, p1}, Lcom/byazt/b/z;->c(Lcom/byazt/c/nb;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/c/nb;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/nb;)Lcom/byazt/c/qp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(Lcom/byazt/c/qp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/t/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/z;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0, p1}, Lcom/byazt/zz/z;->tt(Lcom/byazt/t/DownloadTask;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/tt;)V

    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(Lcom/byazt/t/tt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 15
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Ljava/util/List;)V

    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string p2, "stopForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    sget-object p1, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string v0, "aidlService.stopForeground"

    invoke-static {p1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {p1, p2}, Lcom/byazt/zz/i;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public da(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->da(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->da(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
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
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->i(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->i(I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->m(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->m(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public my(I)Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->my(I)Lcom/byazt/c/sp;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/sp;)Lcom/byazt/c/IDownloadFileUriProvider;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public n(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->n(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0}, Lcom/byazt/zz/u;->n()Z

    move-result v0

    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0}, Lcom/byazt/zz/i;->uj()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nu(I)Lcom/byazt/c/yv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->nu(I)Lcom/byazt/c/zm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/zm;)Lcom/byazt/c/yv;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public rh(I)Lcom/byazt/c/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->rh(I)Lcom/byazt/c/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/d;)Lcom/byazt/c/eo;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public sl(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->ve:Lcom/byazt/zz/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/zz/z;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sp()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sp(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->sp(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public startService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->ve:Lcom/byazt/zz/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/zz/z;->startService()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public t(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->sl(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return v1
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/b/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/b/z;->x(I)Lcom/byazt/t/DownloadInfo;

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

    .line 7
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;Z)V
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    sget-object v0, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/byazt/zz/i;->c(IILcom/byazt/c/i;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 29
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(ILjava/util/List;)V

    return-void

    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->c(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(IZ)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/u;->tt(IZ)V

    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->tt(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/z;->ve:Lcom/byazt/zz/z;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0, p1}, Lcom/byazt/zz/z;->ve(Lcom/byazt/t/DownloadTask;)V

    :cond_1
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

    .line 11
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->tt(Ljava/util/List;)V

    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->tt(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt()Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string v2, "isServiceForeground, aidlService is null"

    invoke-static {v0, v2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_0
    sget-object v0, Lcom/byazt/b/z;->c:Ljava/lang/String;

    const-string v2, "aidlService.isServiceForeground"

    invoke-static {v0, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0}, Lcom/byazt/zz/i;->a()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public tt(I)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->tt(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1
.end method

.method public u(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/zz/uj;->tt(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->u(I)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
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

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0}, Lcom/byazt/zz/u;->uj()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0}, Lcom/byazt/zz/i;->tt()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 8
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->uj(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

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

    .line 4
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->ve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->ve(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ve(IZ)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/i;->uj(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/byazt/zz/ve;->hd()Z

    move-result v0

    return v0
.end method

.method public ve(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->ve(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->tt(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->x(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    return-void
.end method

.method public yp(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->yp(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->yp(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/z;->uj:Lcom/byazt/zz/u;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/zz/u;->z(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/z;->tt:Lcom/byazt/zz/i;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/zz/i;->z(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
