.class public Lcom/byazt/but/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a0,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/but/tt$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/nr/d;

.field public n:I

.field public tt:Lcom/byazt/but/tt$c;

.field public uj:I

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/but/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/nr/d;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/byazt/but/tt;->uj:I

    .line 25
    .line 26
    iput v1, p0, Lcom/byazt/but/tt;->n:I

    .line 27
    .line 28
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/byazt/but/tt;->n:I

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/but/tt;->uj:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/but/tt;->tt:Lcom/byazt/but/tt$c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/but/tt$c;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    add-int/2addr v0, v2

    .line 18
    iput v0, p0, Lcom/byazt/but/tt;->n:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/but/tt;->tt:Lcom/byazt/but/tt$c;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/byazt/but/tt$c;->c(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 28
    .line 29
    const-wide/16 v3, 0x3e8

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method private ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iput v1, p0, Lcom/byazt/but/tt;->n:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/but/tt;->ve()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/but/tt;->uj:I

    .line 8
    invoke-direct {p0}, Lcom/byazt/but/tt;->ve()V

    return-void
.end method

.method public c(Lcom/byazt/but/tt$c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/but/tt;->tt:Lcom/byazt/but/tt$c;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/but/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p1, p0, Lcom/byazt/but/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/but/tt;->uj()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/byazt/but/tt;->n()V

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/but/tt;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/but/tt;->ve()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/but/tt;->c:Lcom/byazt/nr/d;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
