.class public abstract Lcom/aggmoread/sdk/z/a/m/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private b:Z

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->c:J

    iput-wide p3, p0, Lcom/aggmoread/sdk/z/a/m/m;->d:J

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/m/m;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    return-void
.end method

.method public abstract a(JJ)V
.end method

.method public final declared-synchronized b(JJ)V
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    iput-wide p3, p0, Lcom/aggmoread/sdk/z/a/m/m;->d:J

    iget-wide p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/m/m;->g()V

    :cond_0
    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/aggmoread/sdk/z/a/m/m$a;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/m/m;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aggmoread/sdk/z/a/m/m;->d:J

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/aggmoread/sdk/z/a/m/m$a;-><init>(Lcom/aggmoread/sdk/z/a/m/m;JJ)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->a:Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract c()V
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/m/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/m/m;->d:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/m;->b(JJ)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/m/m;->d:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/m;->b(JJ)V

    return-void
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->b:Z

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->c:J

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/m/m;->e:J

    return-void
.end method
