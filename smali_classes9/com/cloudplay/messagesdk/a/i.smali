.class public Lcom/cloudplay/messagesdk/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/cloudplay/messagesdk/a/i;

.field private static volatile b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/cloudplay/messagesdk/a/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/a/i;->a:Lcom/cloudplay/messagesdk/a/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/cloudplay/messagesdk/a/i;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/a/i;->a:Lcom/cloudplay/messagesdk/a/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/cloudplay/messagesdk/a/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloudplay/messagesdk/a/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/cloudplay/messagesdk/a/i;->a:Lcom/cloudplay/messagesdk/a/i;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lcom/cloudplay/messagesdk/a/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/cloudplay/messagesdk/a/i;->a:Lcom/cloudplay/messagesdk/a/i;

    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/a/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object v0
.end method
