.class public Lcom/byazt/lph/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0x2e
    }
.end annotation


# instance fields
.field public volatile c:Lcom/byazt/lph/uj;

.field public final tt:Lcom/byazt/vb/n;

.field public final ve:Lcom/byazt/mv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/lph/n;->ve:Lcom/byazt/mv/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/vb/uj;->z()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/lph/n;->ve()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/lph/n;->n()Lcom/byazt/lph/uj;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/byazt/lph/uj;->c(Lcom/byazt/lph/n;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public n()Lcom/byazt/lph/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/n;->c:Lcom/byazt/lph/uj;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lph/n;->c:Lcom/byazt/lph/uj;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/byazt/lph/uj;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/byazt/lph/uj;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/lph/n;->c:Lcom/byazt/lph/uj;

    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/lph/n;->c:Lcom/byazt/lph/uj;

    .line 23
    .line 24
    return-object v0
.end method

.method public sp()Landroid/os/Looper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/vb/uj;->z()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/uj;->z()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/lph/n;->n()Lcom/byazt/lph/uj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public ve()V
    .locals 0

    return-void
.end method
