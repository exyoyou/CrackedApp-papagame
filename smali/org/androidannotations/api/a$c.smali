.class public abstract Lorg/androidannotations/api/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private executionAsked:Z

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private managed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private remainingDelay:J

.field private serial:Ljava/lang/String;

.field private targetTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p1, p2, v1

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    iput-wide p2, p0, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    add-long/2addr v1, p2

    .line 34
    iput-wide v1, p0, Lorg/androidannotations/api/a$c;->targetTimeMillis:J

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    iput-object p4, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lorg/androidannotations/api/a;->a()Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-class v0, Lorg/androidannotations/api/a;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/a;->b()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v1}, Lorg/androidannotations/api/a;->c(Ljava/lang/String;)Lorg/androidannotations/api/a$c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-wide v2, v1, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    iget-wide v2, v1, Lorg/androidannotations/api/a$c;->targetTimeMillis:J

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    sub-long/2addr v2, v6

    .line 53
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, v1, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 58
    .line 59
    :cond_1
    invoke-static {v1}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method

.method static synthetic access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/androidannotations/api/a$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/androidannotations/api/a$c;->executionAsked:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lorg/androidannotations/api/a$c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/androidannotations/api/a$c;->executionAsked:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lorg/androidannotations/api/a$c;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/androidannotations/api/a$c;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lorg/androidannotations/api/a$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/androidannotations/api/a$c;->remainingDelay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$500(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/androidannotations/api/a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/a$c;->managed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/a;->a()Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/androidannotations/api/a$c;->serial:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/androidannotations/api/a$c;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->a()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-direct {p0}, Lorg/androidannotations/api/a$c;->a()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
