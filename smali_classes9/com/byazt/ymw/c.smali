.class public Lcom/byazt/ymw/c;
.super Lcom/byazt/omf/sl$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x14
    }
.end annotation


# instance fields
.field public c:Landroid/os/Handler;

.field public tt:Lcom/byazt/aas/n$c;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/n$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/sl$c;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/ymw/c;->c:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ymw/c;->tt:Lcom/byazt/aas/n$c;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ymw/c;)Lcom/byazt/aas/n$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ymw/c;->tt:Lcom/byazt/aas/n$c;

    return-object p0
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ymw/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/ymw/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/ymw/c$1;-><init>(Lcom/byazt/ymw/c;)V

    invoke-direct {p0, v0}, Lcom/byazt/ymw/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/ymw/c$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/ymw/c$2;-><init>(Lcom/byazt/ymw/c;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/ymw/c;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public ve()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/ymw/c$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/ymw/c$3;-><init>(Lcom/byazt/ymw/c;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/ymw/c;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
