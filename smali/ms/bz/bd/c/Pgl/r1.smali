.class public final Lms/bz/bd/c/Pgl/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lms/bz/bd/c/Pgl/r1;


# instance fields
.field private a:Lms/bz/bd/c/Pgl/pbll;

.field private n:Landroid/hardware/display/DisplayManager;

.field private final tt:Landroid/os/HandlerThread;

.field private uj:Z

.field private ve:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lms/bz/bd/c/Pgl/r1;->uj:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1;->ve:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Application;

    if-nez p1, :cond_1

    invoke-static {}, Lms/bz/bd/c/Pgl/r1;->tt()Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lms/bz/bd/c/Pgl/r1;->ve:Landroid/content/Context;

    :cond_0
    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1;->ve:Landroid/content/Context;

    :cond_1
    new-instance p1, Landroid/os/HandlerThread;

    const/4 v0, 0x4

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "d432c3"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1;->tt:Landroid/os/HandlerThread;

    return-void

    :array_0
    .array-data 1
        0x58t
        0x5t
        0x73t
        0x74t
    .end array-data
.end method

.method static synthetic c(Lms/bz/bd/c/Pgl/r1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lms/bz/bd/c/Pgl/r1;->ve:Landroid/content/Context;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lms/bz/bd/c/Pgl/r1;
    .locals 2

    .line 2
    const-class v0, Lms/bz/bd/c/Pgl/r1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/r1;->c:Lms/bz/bd/c/Pgl/r1;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/r1;

    invoke-direct {v1, p0}, Lms/bz/bd/c/Pgl/r1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lms/bz/bd/c/Pgl/r1;->c:Lms/bz/bd/c/Pgl/r1;

    :cond_0
    sget-object p0, Lms/bz/bd/c/Pgl/r1;->c:Lms/bz/bd/c/Pgl/r1;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lms/bz/bd/c/Pgl/r1;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1;->n:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic c(Lms/bz/bd/c/Pgl/r1;Lms/bz/bd/c/Pgl/pbll;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1;->a:Lms/bz/bd/c/Pgl/pbll;

    return-void
.end method

.method private static tt()Landroid/app/Application;
    .locals 13

    .line 1
    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v4, "866d0b"

    const/16 v5, 0x1a

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-string v11, "38287b"

    const/16 v1, 0x12

    new-array v12, v1, [B

    fill-array-data v12, :array_1

    invoke-static/range {v7 .. v12}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    :catchall_0
    return-object v6

    :array_0
    .array-data 1
        0x28t
        0x3at
        0x41t
        0x2t
        0x0t
        0x7ct
        0x3ft
        0x59t
        0x66t
        0x24t
        0x39t
        0x7at
        0x64t
        0x13t
        0x1bt
        0x7ct
        0x2dt
        0x1et
        0x73t
        0x2dt
        0x1dt
        0x3ct
        0x57t
        0x15t
        0xet
        0x71t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x2ft
        0x53t
        0x5et
        0xdt
        0x7bt
        0x24t
        0x38t
        0x73t
        0x78t
        0x2et
        0x33t
        0x42t
        0x4dt
        0x1ct
        0x7ct
        0x3ft
        0x17t
    .end array-data
.end method

.method static synthetic tt(Lms/bz/bd/c/Pgl/r1;)Landroid/os/HandlerThread;
    .locals 0

    .line 2
    iget-object p0, p0, Lms/bz/bd/c/Pgl/r1;->tt:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic uj(Lms/bz/bd/c/Pgl/r1;)Lms/bz/bd/c/Pgl/pbll;
    .locals 0

    iget-object p0, p0, Lms/bz/bd/c/Pgl/r1;->a:Lms/bz/bd/c/Pgl/pbll;

    return-object p0
.end method

.method static synthetic ve(Lms/bz/bd/c/Pgl/r1;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lms/bz/bd/c/Pgl/r1;->n:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized c()V
    .locals 3

    .line 3
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lms/bz/bd/c/Pgl/r1;->uj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lms/bz/bd/c/Pgl/r1;->uj:Z

    new-instance v0, Lcom/byazt/jtc/ve;

    new-instance v1, Lms/bz/bd/c/Pgl/r1$pgla;

    invoke-direct {v1, p0}, Lms/bz/bd/c/Pgl/r1$pgla;-><init>(Lms/bz/bd/c/Pgl/r1;)V

    const-string v2, "z/bd/c/Pgl/r1"

    invoke-direct {v0, v1, v2}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/r1;->n:Landroid/hardware/display/DisplayManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1;->a:Lms/bz/bd/c/Pgl/pbll;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/r1;->tt:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    .line 20
    :catchall_1
    :cond_1
    monitor-exit p0

    .line 21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_2
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method
