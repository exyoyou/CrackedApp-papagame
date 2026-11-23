.class Lcom/youth/banner/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/youth/banner/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/youth/banner/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/youth/banner/e$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field e:Ljava/util/concurrent/locks/Lock;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/locks/Lock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/youth/banner/e$a;->c:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 7
    .line 8
    new-instance p1, Lcom/youth/banner/e$c;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, p2}, Lcom/youth/banner/e$c;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/youth/banner/e$a;->d:Lcom/youth/banner/e$c;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/youth/banner/e$a;)V
    .locals 1
    .param p1    # Lcom/youth/banner/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object p1, v0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 11
    .line 12
    :cond_0
    iput-object v0, p1, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 15
    .line 16
    iput-object p0, p1, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public b()Lcom/youth/banner/e$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-object v0, v1, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/youth/banner/e$a;->b:Lcom/youth/banner/e$a;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/youth/banner/e$a;->d:Lcom/youth/banner/e$c;

    .line 31
    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public c(Ljava/lang/Runnable;)Lcom/youth/banner/e$c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lcom/youth/banner/e$a;->c:Ljava/lang/Runnable;

    .line 11
    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/youth/banner/e$a;->b()Lcom/youth/banner/e$c;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/youth/banner/e$a;->a:Lcom/youth/banner/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/youth/banner/e$a;->e:Ljava/util/concurrent/locks/Lock;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
