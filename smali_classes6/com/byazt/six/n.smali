.class public Lcom/byazt/six/n;
.super Lcom/byazt/six/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f6,
        0x2e
    }
.end annotation


# static fields
.field public static c:Ljava/io/File;

.field public static volatile tt:Lcom/byazt/six/n;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Z

.field public sp:Ljava/util/concurrent/atomic/AtomicInteger;

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public x:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/six/ve;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/six/n;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/byazt/six/n;->n:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/six/n;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/six/n;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/six/n;->x:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/byazt/six/n;->x()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic c(Lcom/byazt/six/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/six/n;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/six/n;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/byazt/six/n;->x:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/32 v2, 0x927c0

    .line 22
    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/byazt/six/n;->a()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static sp()Ljava/io/File;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/six/n;->c:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/byazt/six/uj;->c()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "tt_tmpl_pkg"

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v2, "template"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/byazt/six/n;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    const-string v1, "TemplateManager"

    .line 31
    .line 32
    const-string v2, "getTemplateDir error"

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    sget-object v0, Lcom/byazt/six/n;->c:Ljava/io/File;

    .line 38
    .line 39
    return-object v0
.end method

.method public static tt()Lcom/byazt/six/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/six/n;->tt:Lcom/byazt/six/n;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/six/n;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/six/n;->tt:Lcom/byazt/six/n;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/six/n;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/six/n;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/six/n;->tt:Lcom/byazt/six/n;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/six/n;->tt:Lcom/byazt/six/n;

    .line 25
    .line 26
    return-object v0
.end method

.method private x()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/six/n$1;

    .line 2
    .line 3
    const-string v1, "init"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/six/n$1;-><init>(Lcom/byazt/six/n;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/byazt/or/n;->tt(Lcom/byazt/bwm/sp;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/six/n;->c(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/six/n;->sp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/byazt/six/n;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/six/n;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/mf/ve;->ve()Lcom/byazt/ku/c;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/byazt/six/x;->tt()Lcom/byazt/ku/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ku/c;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/byazt/six/x;->tt(Lcom/byazt/ku/c;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    iget-object p1, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object p1, p0, Lcom/byazt/six/n;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object v3

    invoke-interface {v3}, Lcom/byazt/mf/ve;->tt()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/byazt/six/n$2;

    invoke-direct {v4, p0}, Lcom/byazt/six/n$2;-><init>(Lcom/byazt/six/n;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_5
    invoke-static {p1}, Lcom/byazt/six/x;->c(Lcom/byazt/ku/c;)V

    .line 17
    invoke-virtual {p1}, Lcom/byazt/ku/c;->n()Lcom/byazt/ku/c$tt;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/byazt/ku/c;->n()Lcom/byazt/ku/c$tt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ku/c$tt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/byazt/ku/c;->n()Lcom/byazt/ku/c$tt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ku/c$tt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/byazt/six/ve;->c(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ku/c;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/byazt/six/ve;->c(Lcom/byazt/ku/c;Lcom/byazt/ku/c;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    move v5, v3

    :goto_1
    if-nez v3, :cond_c

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/byazt/six/ve;->tt(Lcom/byazt/ku/c;Lcom/byazt/ku/c;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 22
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_9
    move-object v4, v1

    :goto_2
    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-nez v1, :cond_b

    .line 23
    iget-object v1, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    move v5, v0

    :cond_c
    if-eqz v5, :cond_d

    .line 24
    invoke-virtual {p0, p1}, Lcom/byazt/six/n;->c(Lcom/byazt/ku/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    invoke-static {p1}, Lcom/byazt/six/x;->c(Lcom/byazt/ku/c;)V

    .line 26
    invoke-static {}, Lcom/byazt/six/x;->ve()V

    .line 27
    invoke-virtual {p0, v4}, Lcom/byazt/six/ve;->tt(Ljava/util/List;)V

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/six/n;->ve()V

    .line 29
    iget-object p1, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iget-object p1, p0, Lcom/byazt/six/n;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 31
    invoke-direct {p0}, Lcom/byazt/six/n;->i()V

    return-void

    .line 32
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/byazt/six/n;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x6d

    .line 33
    invoke-virtual {p0, p1}, Lcom/byazt/six/ve;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Lcom/byazt/ku/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ku/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/byazt/six/ve;->c(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ku/c;->n()Lcom/byazt/ku/c$tt;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/byazt/six/ve;->c(Lcom/byazt/ku/c$tt;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ku/c;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/six/ve;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n()Lcom/byazt/ku/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/six/x;->tt()Lcom/byazt/ku/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/six/n;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/six/x;->tt()Lcom/byazt/ku/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ku/c;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/byazt/six/n;->c(Lcom/byazt/ku/c;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/six/x;->uj()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-boolean v0, p0, Lcom/byazt/six/n;->n:Z

    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method
