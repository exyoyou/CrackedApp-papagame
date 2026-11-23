.class public Lcom/byazt/ymw/ve;
.super Lcom/byazt/omf/u$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/gl/c;

.field public tt:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/byazt/gl/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/u$c;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/ymw/ve;->tt:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ymw/ve;->c:Lcom/byazt/gl/c;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ymw/ve;)Lcom/byazt/gl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ymw/ve;->c:Lcom/byazt/gl/c;

    return-object p0
.end method

.method private sp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/ymw/ve;->c:Lcom/byazt/gl/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/byazt/ymw/ve;->tt:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method

.method private x()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/ve;->tt:Landroid/os/Handler;

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
    iput-object v0, p0, Lcom/byazt/ymw/ve;->tt:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->sp()V

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
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->x()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ymw/ve$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ymw/ve$1;-><init>(Lcom/byazt/ymw/ve;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->x()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/ve$5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/ve$5;-><init>(Lcom/byazt/ymw/ve;)V

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
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->x()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/ve$2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/ve$2;-><init>(Lcom/byazt/ymw/ve;)V

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
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->x()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/ve$4;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/ve$4;-><init>(Lcom/byazt/ymw/ve;)V

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
    invoke-direct {p0}, Lcom/byazt/ymw/ve;->x()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ymw/ve$3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ymw/ve$3;-><init>(Lcom/byazt/ymw/ve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
