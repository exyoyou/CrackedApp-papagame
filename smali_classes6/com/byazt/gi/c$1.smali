.class public Lcom/byazt/gi/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a6,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gi/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gi/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/gi/c;->ve:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/gi/c;->c(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/byazt/gi/ve$c;->c(Landroid/os/IBinder;)Lcom/byazt/gi/ve;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, v0, Lcom/byazt/gi/c;->c:Lcom/byazt/gi/ve;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/byazt/gi/c;->ve()V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/byazt/gi/c;->tt:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit p1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/gi/c;->ve:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/gi/c;->c(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/gi/c$1;->c:Lcom/byazt/gi/c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/byazt/gi/c;->c:Lcom/byazt/gi/ve;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/byazt/gi/c;->tt:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    monitor-exit p1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method
