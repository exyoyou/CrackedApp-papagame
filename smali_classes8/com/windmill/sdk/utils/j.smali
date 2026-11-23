.class public final Lcom/windmill/sdk/utils/j;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/windmill/sdk/utils/j;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const v2, 0x7fffffff

    .line 3
    .line 4
    .line 5
    const-wide/16 v3, 0x1e

    .line 6
    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static a()Lcom/windmill/sdk/utils/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/utils/j;->a:Lcom/windmill/sdk/utils/j;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/windmill/sdk/utils/j;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/utils/j;->a:Lcom/windmill/sdk/utils/j;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/windmill/sdk/utils/j;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/windmill/sdk/utils/j;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/windmill/sdk/utils/j;->a:Lcom/windmill/sdk/utils/j;

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
    sget-object v0, Lcom/windmill/sdk/utils/j;->a:Lcom/windmill/sdk/utils/j;

    .line 25
    .line 26
    return-object v0
.end method
