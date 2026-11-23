.class public Lcom/byazt/yg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc0,
        0x14
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/yg/c;


# instance fields
.field public volatile a:Z

.field public n:J

.field public tt:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public uj:Lcom/byazt/yg/tt;

.field public ve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/yg/c;->ve:Ljava/util/HashSet;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/yg/c;->n:J

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/byazt/yg/c;->a:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/byazt/yg/c;->ve()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static c()Lcom/byazt/yg/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/yg/c;

    invoke-direct {v0}, Lcom/byazt/yg/c;-><init>()V

    sput-object v0, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/gv/c;->c()Lcom/byazt/gv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/yg/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/yg/c$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/gv/c;->c(Lcom/byazt/gv/ve;)V

    return-void
.end method

.method private c(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 2

    .line 5
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/uy/tt;->uj()Lcom/byazt/uy/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v0, p2, p1}, Lcom/byazt/uy/a;->c(Ljava/lang/Throwable;Ljava/lang/Thread;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static tt()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/byazt/yg/c;->a:Z

    .line 3
    sget-object v0, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    iget-object v0, v0, Lcom/byazt/yg/c;->uj:Lcom/byazt/yg/tt;

    .line 4
    new-instance v1, Lcom/byazt/yg/c;

    invoke-direct {v1}, Lcom/byazt/yg/c;-><init>()V

    sput-object v1, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/yg/ve;

    invoke-static {}, Lcom/byazt/uy/x;->uj()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/yg/ve;-><init>(Landroid/content/Context;)V

    .line 6
    :cond_0
    sget-object v1, Lcom/byazt/yg/c;->c:Lcom/byazt/yg/c;

    invoke-virtual {v1, v0}, Lcom/byazt/yg/c;->c(Lcom/byazt/yg/tt;)V

    return-void

    :cond_1
    const-string v0, "CrashCatchDispatcher id not init."

    .line 7
    invoke-static {v0}, Lcom/byazt/mg/da;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "CrashCatchDispatcher reRegister"

    .line 8
    invoke-static {v1, v0}, Lcom/byazt/mg/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tt(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/uy/tt;->tt()Ljava/util/List;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/byazt/uy/ve;->tt:Lcom/byazt/uy/ve;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    :try_start_0
    invoke-static {p2}, Lcom/byazt/mg/yp;->c(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/mg/da;->tt(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ve()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    iget-object v1, p0, Lcom/byazt/yg/c;->tt:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/byazt/yg/c;->tt:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/yg/c;->ve:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/yg/c;->ve:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/byazt/yg/c;->tt:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/yg/tt;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/yg/c;->uj:Lcom/byazt/yg/tt;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/yg/c;->n:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x4e20

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iput-wide v2, p0, Lcom/byazt/yg/c;->n:J

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/byazt/yg/c;->a:Z

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string v0, "This CrashCatchDispatcher is disable"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/mg/da;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 39
    .line 40
    .line 41
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :try_start_2
    sget-object v3, Lcom/byazt/uy/ve;->tt:Lcom/byazt/uy/ve;

    .line 49
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->tt(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget-object v2, p0, Lcom/byazt/yg/c;->uj:Lcom/byazt/yg/tt;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-interface {v2, p2}, Lcom/byazt/yg/tt;->c(Ljava/lang/Throwable;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lcom/byazt/yg/c;->uj:Lcom/byazt/yg/tt;

    .line 66
    .line 67
    invoke-interface {v2, v0, v1, p1, p2}, Lcom/byazt/yg/tt;->c(JLjava/lang/Thread;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "crash_dispatcher"

    .line 71
    .line 72
    const-string v1, "end dispose "

    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-static {v0}, Lcom/byazt/mg/da;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/byazt/yg/c;->ve(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method
