.class public Lcom/kwad/framework/filedownloader/event/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aCj:Ljava/util/concurrent/Executor;

.field private final aCk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/kwad/framework/filedownloader/event/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    const-string v1, "EventPool"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/kwad/framework/filedownloader/f/b;->w(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCj:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    .line 20
    .line 21
    return-void
.end method

.method private static a(Ljava/util/LinkedList;Lcom/kwad/framework/filedownloader/event/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/kwad/framework/filedownloader/event/c;",
            ">;",
            "Lcom/kwad/framework/filedownloader/event/b;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 14
    check-cast v2, Lcom/kwad/framework/filedownloader/event/c;

    invoke-virtual {v2, p1}, Lcom/kwad/framework/filedownloader/event/c;->a(Lcom/kwad/framework/filedownloader/event/b;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p1, Lcom/kwad/framework/filedownloader/event/b;->aCp:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kwad/framework/filedownloader/event/c;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_0

    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 3
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 7
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    .line 9
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p2

    monitor-exit p1

    return p2

    :catchall_1
    move-exception p2

    .line 10
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/kwad/framework/filedownloader/event/b;)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "publish %s"

    .line 8
    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/event/b;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    aput-object v4, v3, v1

    .line 16
    .line 17
    invoke-static {p0, v0, v3}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/event/b;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/LinkedList;

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    monitor-enter v4

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/event/a;->aCk:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/LinkedList;

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string p1, "No listener for this event %s"

    .line 56
    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v0, v2, v1

    .line 60
    .line 61
    invoke-static {p0, p1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    monitor-exit v4

    .line 65
    return v1

    .line 66
    :cond_2
    monitor-exit v4

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_0
    invoke-static {v3, p1}, Lcom/kwad/framework/filedownloader/event/a;->a(Ljava/util/LinkedList;Lcom/kwad/framework/filedownloader/event/b;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "event must not be null!"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final c(Lcom/kwad/framework/filedownloader/event/b;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/event/b;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const-string v1, "asyncPublishInNewThread %s"

    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/event/a;->aCj:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    new-instance v1, Lcom/kwad/framework/filedownloader/event/a$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/kwad/framework/filedownloader/event/a$1;-><init>(Lcom/kwad/framework/filedownloader/event/a;Lcom/kwad/framework/filedownloader/event/b;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
