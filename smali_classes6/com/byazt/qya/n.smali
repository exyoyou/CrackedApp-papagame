.class public Lcom/byazt/qya/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b1,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qya/n$c;,
        Lcom/byazt/qya/n$tt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final c:Landroid/os/Handler;

.field public volatile da:Z

.field public i:J

.field public final n:J

.field public volatile sl:Z

.field public final sp:Lcom/byazt/qya/n$tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/qya/n$tt<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/Runnable;

.field public tt:I

.field public final uj:I

.field public final ve:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile x:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/byazt/qya/n$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/qya/n$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/qya/n;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/byazt/qya/n;->tt:I

    .line 5
    iput-boolean v0, p0, Lcom/byazt/qya/n;->a:Z

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/byazt/qya/n;->i:J

    .line 7
    iput-boolean v0, p0, Lcom/byazt/qya/n;->da:Z

    .line 8
    iput-boolean v0, p0, Lcom/byazt/qya/n;->sl:Z

    .line 9
    new-instance v0, Lcom/byazt/qya/n$1;

    invoke-direct {v0, p0}, Lcom/byazt/qya/n$1;-><init>(Lcom/byazt/qya/n;)V

    iput-object v0, p0, Lcom/byazt/qya/n;->t:Ljava/lang/Runnable;

    .line 10
    invoke-static {p1}, Lcom/byazt/qya/n$c;->c(Lcom/byazt/qya/n$c;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/qya/n;->ve:Ljava/util/concurrent/Callable;

    .line 11
    invoke-static {p1}, Lcom/byazt/qya/n$c;->tt(Lcom/byazt/qya/n$c;)Lcom/byazt/qya/n$tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/qya/n;->sp:Lcom/byazt/qya/n$tt;

    .line 12
    invoke-static {p1}, Lcom/byazt/qya/n$c;->ve(Lcom/byazt/qya/n$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/qya/n;->uj:I

    .line 13
    invoke-static {p1}, Lcom/byazt/qya/n$c;->uj(Lcom/byazt/qya/n$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/qya/n;->n:J

    .line 14
    invoke-static {p1}, Lcom/byazt/qya/n$c;->n(Lcom/byazt/qya/n$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/qya/n;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/qya/n$c;Lcom/byazt/qya/n$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/qya/n;-><init>(Lcom/byazt/qya/n$c;)V

    return-void
.end method

.method private a()J
    .locals 6

    .line 2
    iget-wide v0, p0, Lcom/byazt/qya/n;->i:J

    long-to-double v0, v0

    iget v2, p0, Lcom/byazt/qya/n;->tt:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/byazt/qya/n;->n:J

    long-to-double v2, v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static synthetic a(Lcom/byazt/qya/n;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/n;->ve:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/qya/n;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/byazt/qya/n;->tt:I

    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 3

    .line 15
    instance-of v0, p0, Ljava/net/UnknownHostException;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/io/EOFException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    instance-of v0, p0, Ljava/io/IOException;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "canceled"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "etimedout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "enetunreach"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "econnreset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "connection abort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "software caused connection abort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public static synthetic n(Lcom/byazt/qya/n;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/qya/n;->tt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/qya/n;->tt:I

    return v0
.end method

.method private n()V
    .locals 2

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/qya/n;->a()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/qya/n;->a:Z

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/qya/n;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/n;->t:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/qya/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/qya/n;->uj:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/qya/n;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/qya/n;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private uj()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/qya/n;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/qya/n;->tt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/byazt/qya/n;->tt:I

    .line 4
    invoke-direct {p0}, Lcom/byazt/qya/n;->n()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/qya/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/qya/n;->sl:Z

    return p0
.end method

.method public static synthetic x(Lcom/byazt/qya/n;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/n;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/qya/n;->x:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/byazt/qya/n;->tt:I

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/byazt/qya/n;->tt:I

    iget v2, p0, Lcom/byazt/qya/n;->uj:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/byazt/qya/n;->a:Z

    if-nez v1, :cond_2

    .line 6
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/byazt/qya/n;->a:Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/byazt/qya/n;->ve:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/qya/n;->sp:Lcom/byazt/qya/n$tt;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/byazt/qya/n$tt;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/byazt/qya/n;->uj()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    iget-object v2, p0, Lcom/byazt/qya/n;->sp:Lcom/byazt/qya/n$tt;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/byazt/qya/n$tt;->c(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/byazt/qya/n;->uj()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public tt()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/qya/n;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/qya/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget v0, p0, Lcom/byazt/qya/n;->tt:I

    iget v1, p0, Lcom/byazt/qya/n;->uj:I

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/byazt/qya/n;->da:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/qya/n;->ve()V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/byazt/qya/n;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/byazt/qya/n;->da:Z

    .line 8
    iget-object v2, p0, Lcom/byazt/qya/n;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/byazt/qya/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/qya/n;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/qya/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byazt/qya/n;->tt:I

    .line 4
    iput-boolean v0, p0, Lcom/byazt/qya/n;->da:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/qya/n;->sl:Z

    return-void
.end method
