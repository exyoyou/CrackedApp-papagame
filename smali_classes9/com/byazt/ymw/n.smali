.class public Lcom/byazt/ymw/n;
.super Lcom/byazt/omf/m$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/tn/c;

.field public tt:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/byazt/tn/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/m$c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/ymw/n;->tt:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ymw/n;->c:Lcom/byazt/tn/c;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ymw/n;)Lcom/byazt/tn/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ymw/n;->c:Lcom/byazt/tn/c;

    return-object p0
.end method

.method private i()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/n;->tt:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/ymw/n;->tt:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method private x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/ymw/n;->c:Lcom/byazt/tn/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/byazt/ymw/n;->tt:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/n$6;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/n$6;-><init>(Lcom/byazt/ymw/n;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/ymw/n;->x()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ymw/n$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ymw/n$1;-><init>(Lcom/byazt/ymw/n;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(ZILandroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ymw/n$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ymw/n$8;-><init>(Lcom/byazt/ymw/n;ZILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/byazt/ymw/n$7;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ymw/n$7;-><init>(Lcom/byazt/ymw/n;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/n$5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/n$5;-><init>(Lcom/byazt/ymw/n;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public tt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/n$2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/n$2;-><init>(Lcom/byazt/ymw/n;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public uj()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/n$4;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/n$4;-><init>(Lcom/byazt/ymw/n;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public ve()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ymw/n;->i()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/n$3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/n$3;-><init>(Lcom/byazt/ymw/n;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
