.class public Lcom/byazt/ymw/tt;
.super Lcom/byazt/omf/t$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0xd
    }
.end annotation


# instance fields
.field public c:Landroid/os/Handler;

.field public tt:Lcom/byazt/aas/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/a$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/t$c;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/ymw/tt;->c:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ymw/tt;->tt:Lcom/byazt/aas/a$c;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ymw/tt;)Lcom/byazt/aas/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ymw/tt;->tt:Lcom/byazt/aas/a$c;

    return-object p0
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ymw/tt;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byazt/ymw/tt;->c:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ymw/tt;->c:Landroid/os/Handler;

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
    new-instance v0, Lcom/byazt/ymw/tt$1;

    invoke-direct {v0, p0}, Lcom/byazt/ymw/tt$1;-><init>(Lcom/byazt/ymw/tt;)V

    invoke-direct {p0, v0}, Lcom/byazt/ymw/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/byazt/ymw/tt$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ymw/tt$2;-><init>(Lcom/byazt/ymw/tt;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/byazt/ymw/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method
