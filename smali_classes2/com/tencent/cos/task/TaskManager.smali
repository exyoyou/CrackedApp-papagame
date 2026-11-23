.class public Lcom/tencent/cos/task/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.TaskManager"


# instance fields
.field protected cmdExecutor:Ljava/util/concurrent/ExecutorService;

.field protected cmdTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected config:Lcom/tencent/cos/COSConfig;

.field protected context:Landroid/content/Context;

.field protected downloadExecutor:Ljava/util/concurrent/ExecutorService;

.field protected downloadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected maxPoolSize:I

.field protected okHttpClient:Lokhttp3/OkHttpClient;

.field protected storageHelper:Lcom/tencent/cos/task/storage/StorageHelper;

.field protected uploadExecutor:Ljava/util/concurrent/ExecutorService;

.field protected uploadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getThreadPoolSize()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    iget v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    iget v0, p0, Lcom/tencent/cos/task/TaskManager;->maxPoolSize:I

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    new-instance v0, Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/tencent/cos/task/TaskManager;->context:Landroid/content/Context;

    .line 59
    .line 60
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 61
    .line 62
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/tencent/cos/task/TaskManager$1;

    .line 84
    .line 85
    invoke-direct {v1, p0, p2}, Lcom/tencent/cos/task/TaskManager$1;-><init>(Lcom/tencent/cos/task/TaskManager;Lcom/tencent/cos/COSConfig;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lokhttp3/Dispatcher;

    .line 93
    .line 94
    invoke-direct {v1}, Lokhttp3/Dispatcher;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getMaxConnectionsCount()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getConnectionTimeout()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    int-to-long v2, v2

    .line 109
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    .line 111
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getSocketTimeout()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    int-to-long v5, v3

    .line 120
    invoke-virtual {v2, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p2}, Lcom/tencent/cos/COSConfig;->getSocketTimeout()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    int-to-long v5, p2

    .line 129
    invoke-virtual {v2, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 141
    .line 142
    new-instance p2, Lcom/tencent/cos/task/storage/StorageHelper;

    .line 143
    .line 144
    invoke-direct {p2, p1, p3}, Lcom/tencent/cos/task/storage/StorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager;->storageHelper:Lcom/tencent/cos/task/storage/StorageHelper;

    .line 148
    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public cancelTask(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/tencent/cos/task/TaskType;->UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/tencent/cos/task/TaskType;->DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 18
    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/tencent/cos/task/TaskType;->CMD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "\u53d6\u6d88\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    .line 45
    .line 46
    if-eq v2, v3, :cond_9

    .line 47
    .line 48
    sget-object v3, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    .line 49
    .line 50
    if-eq v2, v3, :cond_9

    .line 51
    .line 52
    sget-object v3, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    .line 53
    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->cancel()Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 p1, 0x1

    .line 73
    :goto_0
    if-eqz p1, :cond_8

    .line 74
    .line 75
    sget-object v4, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string v5, "\u53d6\u6d88\u4efb\u52a1\u6210\u529f\uff01"

    .line 78
    .line 79
    invoke-static {v4, v5}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 83
    .line 84
    .line 85
    sget-object v3, Lcom/tencent/cos/task/TaskManager$2;->$SwitchMap$com$tencent$cos$task$TaskType:[I

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    aget v1, v3, v1

    .line 92
    .line 93
    if-eq v1, v2, :cond_7

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    if-eq v1, v2, :cond_6

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    if-eq v1, v2, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string v1, "\u53d6\u6d88\u4efb\u52a1\u5931\u8d25\uff01"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    return p1

    .line 128
    :cond_9
    :goto_2
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u53d6\u6d88"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return p1
.end method

.method public getListTask()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    return-object v0
.end method

.method public getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;I)",
            "Lcom/tencent/cos/task/Task;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/tencent/cos/task/Task;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getHttpRequest()Lcom/tencent/cos/network/HttpRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v1, p2, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public pauseTask(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "\u6682\u505c\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    .line 39
    .line 40
    if-eq v1, v2, :cond_6

    .line 41
    .line 42
    sget-object v2, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    .line 43
    .line 44
    if-eq v1, v2, :cond_6

    .line 45
    .line 46
    sget-object v2, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    .line 47
    .line 48
    if-eq v1, v2, :cond_6

    .line 49
    .line 50
    sget-object v3, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    .line 51
    .line 52
    if-eq v1, v3, :cond_6

    .line 53
    .line 54
    sget-object v3, Lcom/tencent/cos/task/TaskState;->DISABLE:Lcom/tencent/cos/task/TaskState;

    .line 55
    .line 56
    if-ne v1, v3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->pause()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v1, 0x1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :cond_4
    if-eqz v1, :cond_5

    .line 74
    .line 75
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "\u6682\u505c\u4efb\u52a1\u6210\u529f\uff01"

    .line 78
    .line 79
    invoke-static {p1, v3}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    const-string v0, "\u6682\u505c\u4efb\u52a1\u5931\u8d25\uff01"

    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return v1

    .line 94
    :cond_6
    :goto_1
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "\u4efb\u52a1\u6682\u505c\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u6682\u505c"

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return p1
.end method

.method public resumeTask(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskType;->UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v0, Lcom/tencent/cos/task/TaskType;->DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 18
    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/task/TaskManager;->getTask(Ljava/util/List;I)Lcom/tencent/cos/task/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v0, Lcom/tencent/cos/task/TaskType;->CMD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "\u6062\u590d\u4efb\u52a1\u5931\u8d25\uff1a\u4e0d\u5b58\u5728\u8be5\u4efb\u52a1"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/cos/task/Task;->getTaskState()Lcom/tencent/cos/task/TaskState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    .line 45
    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "\u4efb\u52a1\u6062\u590d\u5931\u8d25\uff1a\u4efb\u52a1\u72b6\u6001\u4e0d\u5141\u8bb8\u6062\u590d"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return p1

    .line 56
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/cos/task/Task;->resume()Z

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "\u6062\u590d\u4efb\u52a1\u6210\u529f\uff01"

    .line 67
    .line 68
    invoke-static {p1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/tencent/cos/task/TaskManager$2;->$SwitchMap$com$tencent$cos$task$TaskType:[I

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    aget p1, p1, v0

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    if-eq p1, v0, :cond_6

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    if-eq p1, v2, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    if-eq p1, v2, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 90
    .line 91
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    .line 111
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v1, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return v0
.end method

.method public sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/CmdTask;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/CmdTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->cmdTaskList:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->cmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "cancellationException"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 74
    :goto_1
    return-object p1
.end method

.method public sendDownloadRequest(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/DownloadTask;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/DownloadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->downloadTaskList:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "cancellationException"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 74
    :goto_1
    return-object p1
.end method

.method public sendUploadRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/UploadTask;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/UploadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "cancellationException"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 74
    :goto_1
    return-object p1
.end method

.method public sendUploadSliceRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/task/SliceUploadTask;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/cos/network/HttpRequest;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->config:Lcom/tencent/cos/COSConfig;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/cos/task/SliceUploadTask;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/tencent/cos/task/TaskManager;->uploadTaskList:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;-><init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setTaskStateListener(Lcom/tencent/cos/task/listener/ITaskStateListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/cos/task/TaskManager;->uploadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/cos/task/Task;->getFuture()Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/tencent/cos/model/COSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lcom/tencent/cos/task/TaskManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "cancellationException"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 74
    :goto_1
    return-object p1
.end method
