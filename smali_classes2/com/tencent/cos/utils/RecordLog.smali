.class public Lcom/tencent/cos/utils/RecordLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:J = 0x8000L

.field private static final LOG_FLUSH_DURATION:J = 0x2710L

.field private static final MAX_FILE_COUNT:I = 0x1e

.field private static final MAX_FILE_SIZE:I = 0x8000

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static final instance:[B

.field private static final object:[B

.field private static recordLog:Lcom/tencent/cos/utils/RecordLog;


# instance fields
.field private final MSG_DELETE_FILE:I

.field private final MSG_FLUSH_ALL:I

.field private final MSG_FLUSH_CONTENT:I

.field private bufferRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/utils/Record;",
            ">;"
        }
    .end annotation
.end field

.field private fileFilter:Ljava/io/FileFilter;

.field private flag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private logFileDir:Ljava/lang/String;

.field private logRootDir:Ljava/lang/String;

.field private volatile mBufferSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    sput-object v1, Lcom/tencent/cos/utils/RecordLog;->object:[B

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    sput-object v0, Lcom/tencent/cos/utils/RecordLog;->instance:[B

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logFileDir:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Lcom/tencent/cos/utils/RecordLog$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/tencent/cos/utils/RecordLog$1;-><init>(Lcom/tencent/cos/utils/RecordLog;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->fileFilter:Ljava/io/FileFilter;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_FLUSH_ALL:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    iput v2, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_FLUSH_CONTENT:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    iput v3, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_DELETE_FILE:I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    iput-wide v3, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 43
    .line 44
    iput-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, "android"

    .line 64
    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, "data"

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, "logs"

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 99
    .line 100
    new-instance p1, Landroid/os/HandlerThread;

    .line 101
    .line 102
    const-string p2, "log_handlerThread"

    .line 103
    .line 104
    invoke-direct {p1, p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    sput-object p1, Lcom/tencent/cos/utils/RecordLog;->handlerThread:Landroid/os/HandlerThread;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/tencent/cos/utils/RecordLog$2;

    .line 113
    .line 114
    sget-object p2, Lcom/tencent/cos/utils/RecordLog;->handlerThread:Landroid/os/HandlerThread;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p0, p2}, Lcom/tencent/cos/utils/RecordLog$2;-><init>(Lcom/tencent/cos/utils/RecordLog;Landroid/os/Looper;)V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput v1, p1, Landroid/os/Message;->what:I

    .line 130
    .line 131
    iget-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/cos/utils/RecordLog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/RecordLog;->instance:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/cos/utils/RecordLog;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/tencent/cos/utils/RecordLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method


# virtual methods
.method public appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/utils/Record;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/cos/utils/Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 8
    .line 9
    const-wide/32 p3, 0x8000

    .line 10
    .line 11
    .line 12
    cmp-long v1, p1, p3

    .line 13
    .line 14
    if-gtz v1, :cond_0

    .line 15
    .line 16
    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/cos/utils/Record;->getLength()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    add-long/2addr p1, v1

    .line 23
    cmp-long v1, p1, p3

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x1

    .line 34
    iput p2, p1, Landroid/os/Message;->what:I

    .line 35
    .line 36
    iget-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/tencent/cos/utils/Record;->getLength()J

    .line 49
    .line 50
    .line 51
    move-result-wide p3

    .line 52
    add-long/2addr p1, p3

    .line 53
    iput-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public flush()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-gtz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/tencent/cos/utils/RecordLog;->write(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    iput-wide v2, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public getIndexFromFile(Ljava/io/File;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x2e

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public getLogFile(J)Ljava/io/File;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->getLongDate(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v1, "1."

    .line 37
    .line 38
    const-string v2, ".log"

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    new-instance p2, Ljava/io/File;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->fileFilter:Ljava/io/FileFilter;

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    array-length v0, p2

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    new-instance p2, Ljava/io/File;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object p2

    .line 106
    :cond_1
    new-instance v0, Lcom/tencent/cos/utils/RecordLog$3;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/tencent/cos/utils/RecordLog$3;-><init>(Lcom/tencent/cos/utils/RecordLog;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 112
    .line 113
    .line 114
    array-length v0, p2

    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 116
    .line 117
    aget-object v0, p2, v0

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    const-wide/32 v5, 0x8000

    .line 124
    .line 125
    .line 126
    cmp-long v1, v3, v5

    .line 127
    .line 128
    if-lez v1, :cond_2

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/tencent/cos/utils/RecordLog;->getIndexFromFile(Ljava/io/File;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    new-instance v1, Ljava/io/File;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, ""

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, "."

    .line 152
    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v0, v1

    .line 172
    :cond_2
    array-length p1, p2

    .line 173
    add-int/lit8 p1, p1, 0x1

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    :goto_0
    add-int/lit8 v2, p1, -0x1e

    .line 177
    .line 178
    if-ge v1, v2, :cond_3

    .line 179
    .line 180
    aget-object v2, p2, v1

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    return-object v0
.end method

.method public getLogFileDir()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/tencent/cos/utils/RecordLog;->getTodayDate()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logFileDir:Ljava/lang/String;

    .line 46
    .line 47
    return-object v0
.end method

.method public getLogRootDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLongDate(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getTodayDate()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v2, "yyyy-MM-dd"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public write(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/utils/Record;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/RecordLog;->object:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/tencent/cos/utils/RecordLog;->getLogFile(J)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/io/FileOutputStream;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/tencent/cos/utils/Record;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/tencent/cos/utils/Record;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :catch_0
    move-exception p1

    .line 61
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    move-object v1, v3

    .line 67
    goto :goto_5

    .line 68
    :catch_1
    move-exception p1

    .line 69
    move-object v1, v3

    .line 70
    goto :goto_2

    .line 71
    :catch_2
    move-exception p1

    .line 72
    move-object v1, v3

    .line 73
    goto :goto_3

    .line 74
    :catchall_2
    move-exception p1

    .line 75
    goto :goto_5

    .line 76
    :catch_3
    move-exception p1

    .line 77
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 78
    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :catch_4
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :catch_5
    move-exception p1

    .line 89
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 90
    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_6
    move-exception p1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :goto_4
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 101
    return-void

    .line 102
    :goto_5
    if-eqz v1, :cond_3

    .line 103
    .line 104
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_6

    .line 108
    :catch_7
    move-exception v1

    .line 109
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_6
    throw p1

    .line 113
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 114
    throw p1
.end method
