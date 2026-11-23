.class public Lcom/tencent/cos/network/COSRetryHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized retryRequest(IILjava/lang/Exception;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/cos/network/COSRetryHandler;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    instance-of p0, p2, Ljava/net/SocketTimeoutException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return p1

    .line 16
    :cond_1
    :try_start_1
    instance-of p0, p2, Ljava/lang/InterruptedException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return p1

    .line 22
    :cond_2
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method
