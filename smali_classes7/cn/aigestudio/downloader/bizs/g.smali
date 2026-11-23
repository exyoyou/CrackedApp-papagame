.class public final Lcn/aigestudio/downloader/bizs/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "g"

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/ThreadFactory;

.field private static final j:Ljava/util/concurrent/ThreadFactory;

.field private static final k:Ljava/util/concurrent/ExecutorService;

.field private static final l:Ljava/util/concurrent/ExecutorService;

.field public static final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/f;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lcn/aigestudio/downloader/bizs/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcn/aigestudio/downloader/bizs/g;->d:I

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    sput v1, Lcn/aigestudio/downloader/bizs/g;->e:I

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    sput v0, Lcn/aigestudio/downloader/bizs/g;->f:I

    .line 20
    .line 21
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 22
    .line 23
    const/16 v0, 0x38

    .line 24
    .line 25
    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v7, Lcn/aigestudio/downloader/bizs/g;->g:Ljava/util/concurrent/BlockingQueue;

    .line 29
    .line 30
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    const/16 v0, 0x100

    .line 33
    .line 34
    invoke-direct {v14, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 35
    .line 36
    .line 37
    sput-object v14, Lcn/aigestudio/downloader/bizs/g;->h:Ljava/util/concurrent/BlockingQueue;

    .line 38
    .line 39
    new-instance v8, Lcn/aigestudio/downloader/bizs/g$a;

    .line 40
    .line 41
    invoke-direct {v8}, Lcn/aigestudio/downloader/bizs/g$a;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v8, Lcn/aigestudio/downloader/bizs/g;->i:Ljava/util/concurrent/ThreadFactory;

    .line 45
    .line 46
    new-instance v15, Lcn/aigestudio/downloader/bizs/g$b;

    .line 47
    .line 48
    invoke-direct {v15}, Lcn/aigestudio/downloader/bizs/g$b;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v15, Lcn/aigestudio/downloader/bizs/g;->j:Ljava/util/concurrent/ThreadFactory;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    const/4 v3, 0x3

    .line 57
    const-wide/16 v4, 0x3

    .line 58
    .line 59
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    move-object v6, v13

    .line 63
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 69
    .line 70
    const/4 v9, 0x3

    .line 71
    const/4 v10, 0x3

    .line 72
    const-wide/16 v11, 0x2

    .line 73
    .line 74
    move-object v8, v0

    .line 75
    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->l:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 97
    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcn/aigestudio/downloader/bizs/g;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/g;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method declared-synchronized a()Lcn/aigestudio/downloader/bizs/g;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 17
    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    .line 26
    .line 27
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance v2, Lcn/aigestudio/downloader/bizs/h;

    .line 35
    .line 36
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v2, v3, v0}, Lcn/aigestudio/downloader/bizs/h;-><init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    .line 50
    throw v0
.end method

.method public declared-synchronized b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->l:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method declared-synchronized c(Lcn/aigestudio/downloader/bizs/f;)Lcn/aigestudio/downloader/bizs/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lcn/aigestudio/downloader/bizs/f;->t:Z

    .line 30
    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/io/File;

    .line 38
    .line 39
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->f(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcn/aigestudio/downloader/bizs/g;->n(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 30
    .line 31
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcn/aigestudio/downloader/bizs/j;

    .line 56
    .line 57
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v4}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v3}, Lcn/aigestudio/downloader/bizs/c;->e(Lcn/aigestudio/downloader/bizs/j;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    iput-boolean v4, v3, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 68
    .line 69
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v1}, Lcn/aigestudio/downloader/bizs/c;->c(Lcn/aigestudio/downloader/bizs/f;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    const-string v2, ""

    .line 2
    .line 3
    const-string v3, ""

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lg/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public i(Ljava/lang/String;Lg/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "listener"
        }
    .end annotation

    .line 1
    const-string v2, ""

    .line 2
    .line 3
    const-string v3, ""

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lg/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lg/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "dir",
            "listener"
        }
    .end annotation

    .line 1
    const-string v3, ""

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lg/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "dir",
            "name",
            "listener"
        }
    .end annotation

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/g;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lg/b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public declared-synchronized l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lg/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "dir",
            "name",
            "headers",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;",
            "Lg/b;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const-string p2, "Url can not be null."

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    invoke-interface {p5, p1, p3, p2}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_1
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/k;->d(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_4

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    const-string p2, "Network is not available."

    .line 36
    .line 37
    invoke-interface {p5, p1, v1, p2}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_3
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "TASK_DLING.size="

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object v4, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ";dlStart.url="

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v6, "key="

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    sget-object v3, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lcn/aigestudio/downloader/bizs/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_6
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_7
    :try_start_4
    sget-object v3, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_8

    .line 130
    .line 131
    sget-boolean v4, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 132
    .line 133
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lcn/aigestudio/downloader/bizs/f;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    sget-boolean v3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 141
    .line 142
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3, p1}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_9

    .line 153
    .line 154
    sget-boolean v4, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 155
    .line 156
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 159
    .line 160
    .line 161
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 162
    .line 163
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, p1}, Lcn/aigestudio/downloader/bizs/c;->g(Ljava/lang/String;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    .line 175
    .line 176
    iget-object v4, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_9

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    :cond_9
    :goto_2
    if-nez v3, :cond_b

    .line 186
    .line 187
    sget-boolean v3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 188
    .line 189
    new-instance v3, Lcn/aigestudio/downloader/bizs/f;

    .line 190
    .line 191
    invoke-direct {v3}, Lcn/aigestudio/downloader/bizs/f;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object p1, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 195
    .line 196
    iput-object p1, v3, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_a

    .line 203
    .line 204
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    :cond_a
    const-string v4, ".zip"

    .line 215
    .line 216
    const-string v5, ""

    .line 217
    .line 218
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    iput-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 223
    .line 224
    iput-object p3, v3, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_b
    iput-boolean v0, v3, Lcn/aigestudio/downloader/bizs/f;->j:Z

    .line 228
    .line 229
    iget-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    if-eqz p3, :cond_c

    .line 240
    .line 241
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    check-cast p3, Lcn/aigestudio/downloader/bizs/j;

    .line 246
    .line 247
    iput-boolean v1, p3, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_c
    :goto_4
    iput v1, v3, Lcn/aigestudio/downloader/bizs/f;->h:I

    .line 251
    .line 252
    invoke-static {p4, v3}, Lcn/aigestudio/downloader/bizs/k;->c(Ljava/util/List;Lcn/aigestudio/downloader/bizs/f;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    iput-object p2, v3, Lcn/aigestudio/downloader/bizs/f;->o:Ljava/util/List;

    .line 257
    .line 258
    iput-object p5, v3, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 259
    .line 260
    iput-boolean v2, v3, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 261
    .line 262
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 265
    .line 266
    .line 267
    move-result p3

    .line 268
    iget p4, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 269
    .line 270
    if-lt p3, p4, :cond_11

    .line 271
    .line 272
    sget-boolean p2, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 273
    .line 274
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    :cond_d
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result p3

    .line 284
    if-eqz p3, :cond_e

    .line 285
    .line 286
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    check-cast p3, Lcn/aigestudio/downloader/bizs/f;

    .line 291
    .line 292
    iget-object p3, p3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 293
    .line 294
    iget-object p4, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p3

    .line 300
    if-eqz p3, :cond_d

    .line 301
    .line 302
    const/4 v1, 0x1

    .line 303
    goto :goto_5

    .line 304
    :cond_e
    if-nez v1, :cond_f

    .line 305
    .line 306
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 307
    .line 308
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    :cond_f
    if-eqz v2, :cond_10

    .line 312
    .line 313
    invoke-interface {p5, p1}, Lg/b;->b(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_10
    sget-boolean p1, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 317
    .line 318
    if-eqz p1, :cond_14

    .line 319
    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string p2, "TASK_PREPARE size is "

    .line 326
    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_11
    sget-boolean p3, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 341
    .line 342
    if-eqz p3, :cond_12

    .line 343
    .line 344
    new-instance p3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string p4, "Prepare download from "

    .line 350
    .line 351
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget-object p4, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    :cond_12
    if-eqz v2, :cond_13

    .line 360
    .line 361
    invoke-interface {p5}, Lg/b;->onPrepare()V

    .line 362
    .line 363
    .line 364
    :cond_13
    invoke-virtual {p2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->k:Ljava/util/concurrent/ExecutorService;

    .line 368
    .line 369
    new-instance p2, Lcn/aigestudio/downloader/bizs/h;

    .line 370
    .line 371
    iget-object p3, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 372
    .line 373
    invoke-direct {p2, p3, v3}, Lcn/aigestudio/downloader/bizs/h;-><init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V

    .line 374
    .line 375
    .line 376
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    .line 378
    .line 379
    :cond_14
    :goto_6
    monitor-exit p0

    .line 380
    return-void

    .line 381
    :catchall_0
    move-exception p1

    .line 382
    monitor-exit p0

    .line 383
    throw p1
.end method

.method public declared-synchronized m(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "mehtod dlStop() called.url="

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 33
    .line 34
    iget-object v3, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    iget-boolean v3, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    iget-object v0, v1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 50
    .line 51
    const-wide/16 v3, -0x2

    .line 52
    .line 53
    invoke-interface {v0, p1, v3, v4}, Lg/b;->e(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return v2

    .line 58
    :cond_1
    :try_start_1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcn/aigestudio/downloader/bizs/f;

    .line 71
    .line 72
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    .line 97
    .line 98
    iput-boolean v2, v0, Lcn/aigestudio/downloader/bizs/j;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    monitor-exit p0

    .line 102
    return v2

    .line 103
    :cond_3
    :try_start_2
    iput-boolean v2, p1, Lcn/aigestudio/downloader/bizs/f;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    :cond_4
    monitor-exit p0

    .line 106
    const/4 p1, 0x0

    .line 107
    return p1

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0

    .line 110
    throw p1
.end method

.method public declared-synchronized n(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "mehtod dlStopDel() called.url="

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->n:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcn/aigestudio/downloader/bizs/f;

    .line 32
    .line 33
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    iget-boolean v2, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 49
    .line 50
    const-wide/16 v2, -0x1

    .line 51
    .line 52
    invoke-interface {v1, p1, v2, v3}, Lg/b;->e(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcn/aigestudio/downloader/bizs/f;

    .line 69
    .line 70
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcn/aigestudio/downloader/bizs/j;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, v1, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    .line 109
    throw p1
.end method

.method public o()Lcn/aigestudio/downloader/bizs/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public r(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method recoveryTaskInfo() called.url="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcn/aigestudio/downloader/bizs/g;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/c;->g(Ljava/lang/String;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v1, Ljava/io/File;

    .line 73
    .line 74
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "check file :"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/c;->c(Lcn/aigestudio/downloader/bizs/f;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    if-eqz p1, :cond_2

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-lez v1, :cond_2

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lcn/aigestudio/downloader/bizs/j;

    .line 138
    .line 139
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    iput-wide v3, v2, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 146
    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    .line 152
    .line 153
    const/4 v2, 0x1

    .line 154
    iput-boolean v2, v0, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 155
    .line 156
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/g;->a:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lcn/aigestudio/downloader/bizs/j;

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->e(Lcn/aigestudio/downloader/bizs/j;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    return-void
.end method

.method declared-synchronized s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "type"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "removeDLTask() called.url="

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ";type="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lcn/aigestudio/downloader/bizs/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcn/aigestudio/downloader/bizs/f;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p2, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-lez p2, :cond_0

    .line 42
    .line 43
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcn/aigestudio/downloader/bizs/j;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public t(Z)Lcn/aigestudio/downloader/bizs/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDebug"
        }
    .end annotation

    .line 1
    sput-boolean p1, Lcn/aigestudio/downloader/bizs/a;->a:Z

    .line 2
    .line 3
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 4
    .line 5
    return-object p1
.end method

.method public u(I)Lcn/aigestudio/downloader/bizs/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTask"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcn/aigestudio/downloader/bizs/g;->b:I

    .line 2
    .line 3
    sget-object p1, Lcn/aigestudio/downloader/bizs/g;->p:Lcn/aigestudio/downloader/bizs/g;

    .line 4
    .line 5
    return-object p1
.end method
