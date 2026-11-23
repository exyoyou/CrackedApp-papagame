.class public Lcom/haima/hmcp/cloud/DownloadTask;
.super Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/DownloadTask$HmFile;,
        Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;,
        Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haima/hmcp/cloud/CountDownTimerWrapper<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/haima/hmcp/cloud/ITask;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FILE_NEW_NAME_PRE:Ljava/lang/String; = "CP_"

.field private static final FILE_SEGMENT_COEFFICIENT:I = 0x4

.field private static final FILE_SEGMENT_RECEIVE_TIMEOUT:I = 0x7530

.field private static final FILE_SEGMENT_SIZE:I = 0x400

.field private static final KEY_ORDER_CODE:Ljava/lang/String; = "code"

.field private static final KEY_ORDER_CODE_CANCEL:Ljava/lang/String; = "cancel"

.field private static final KEY_ORDER_CODE_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_ORDER_CODE_START:Ljava/lang/String; = "start"

.field private static final KEY_ORDER_FILE_BID:Ljava/lang/String; = "bid"

.field private static final KEY_ORDER_FILE_CID:Ljava/lang/String; = "cid"

.field private static final KEY_ORDER_FILE_CLOUD_PATH:Ljava/lang/String; = "filePath"

.field private static final KEY_ORDER_FILE_MD5:Ljava/lang/String; = "md5sum"

.field private static final KEY_ORDER_FILE_NAME:Ljava/lang/String; = "fileName"

.field private static final KEY_ORDER_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field private static final KEY_ORDER_FILE_TYPE:Ljava/lang/String; = "mimeType"

.field private static final KEY_ORDER_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_ORDER_TYPE_DOWNLOAD:Ljava/lang/String; = "download_image"

.field private static final KEY_ORDER_TYPE_UPLOAD:Ljava/lang/String; = "upload_image"

.field private static final MSG_CREATE_SOCKET:I = 0x69

.field private static final MSG_DOWNLOADING:I = 0x6a

.field private static final MSG_DOWNLOAD_ERROR:I = 0x68

.field private static final MSG_DOWNLOAD_FILE:I = 0x67

.field private static final MSG_FILE_RECEIVE_TIMEOUT:I = 0x6e

.field private static final MSG_ORDER_ACK:I = 0x6d

.field private static final MSG_SEND_CANCEL_ORDER:I = 0x6c

.field private static final MSG_SEND_START_ORDER:I = 0x66

.field private static final MSG_STOP:I = 0x65

.field private static final MSG_TASK_COMPLETE:I = 0x6b

.field private static final RECONNECT_WEB_SOCKET_INTERVAL:I = 0x9c4

.field private static final RECONNECT_WEB_SOCKET_MAX:I = 0xa

.field private static final SEND_END_ORDER_MAX:I = 0x5

.field private static final SEND_START_ORDER_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DownloadTask"

.field private static mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;


# instance fields
.field private cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private cacheLength:I

.field private cacheSize:I

.field private fileSegmentSize:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

.field private mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

.field private mDownloadFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/haima/hmcp/cloud/IWorkListener;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mReconnectSocketCount:I

.field private mStartTime:J

.field private mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

.field private mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

.field private sendCancelOrderCount:I

.field private sendStartOrderCount:I

.field private uploadInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->uploadInterval:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->cacheSize:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendStartOrderCount:I

    .line 20
    .line 21
    iput v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelOrderCount:I

    .line 22
    .line 23
    iput v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mReconnectSocketCount:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->getFileSegmentSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->getUploadInterval(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->uploadInterval:I

    .line 52
    .line 53
    iget p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->cacheSize:I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileCacheSize()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    mul-int p1, p1, p2

    .line 62
    .line 63
    iput p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->cacheSize:I

    .line 64
    .line 65
    iget p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 66
    .line 67
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->getCacheLength(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->cacheLength:I

    .line 72
    .line 73
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p3, "cloud-file: fileSegmentSize:"

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, "; uploadInterval:"

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->uploadInterval:I

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->cache:Ljava/util/ArrayList;

    .line 113
    .line 114
    new-instance p1, Landroid/os/HandlerThread;

    .line 115
    .line 116
    const-string p2, "downloading"

    .line 117
    .line 118
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->handlerThread:Landroid/os/HandlerThread;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 124
    .line 125
    .line 126
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 127
    .line 128
    if-eqz p1, :cond_0

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 138
    .line 139
    :cond_0
    new-instance p1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 140
    .line 141
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->handlerThread:Landroid/os/HandlerThread;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;-><init>(Lcom/haima/hmcp/cloud/DownloadTask;Landroid/os/Looper;)V

    .line 148
    .line 149
    .line 150
    sput-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 151
    .line 152
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/cloud/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStartOrder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/cloud/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->createPipe()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->saveData(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->stop(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/cloud/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->complete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/cloud/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelOrder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->internalOrderAckDispatcher(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300()Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/cloud/DownloadTask;)Lcom/haima/hmcp/cloud/IWorkListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/cloud/DownloadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$608(Lcom/haima/hmcp/cloud/DownloadTask;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mReconnectSocketCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/cloud/DownloadTask;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendDownloadBytesMessage([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ackDownloadFinish()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mCurrentHandleFile = null"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Response: download finish but OutputStream close failed :"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->checkDownloadFile()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string v0, "check file md5 not pass"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 65
    .line 66
    invoke-static {}, Lcom/haima/hmcp/cloud/CloudFileManager;->getInstance()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/CloudFileManager;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {p0, v1, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->renameDownloadTmpFile(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;Landroid/content/Context;)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    move-exception v1

    .line 80
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "cloud-file: update photo fail"

    .line 83
    .line 84
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    iget-wide v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStartTime:J

    .line 95
    .line 96
    sub-long/2addr v1, v3

    .line 97
    sget-object v3, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "cloud-file: file download finish, cost time: "

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .line 123
    .line 124
    :try_start_2
    const-string v4, "file_name"

    .line 125
    .line 126
    iget-object v5, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    const-string v4, "file_md5"

    .line 136
    .line 137
    iget-object v5, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    const-string v4, "file_size"

    .line 145
    .line 146
    iget-object v5, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 147
    .line 148
    iget-wide v5, v5, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 149
    .line 150
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    const-string v4, "download_cost"

    .line 154
    .line 155
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_2
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :goto_2
    const-string v1, "12617"

    .line 164
    .line 165
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->hasNextFile()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v3, "cloud-file: downloaded file success: "

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/InternalCloudFile;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_3
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOAD_FINISH:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 213
    .line 214
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 218
    .line 219
    if-eqz v1, :cond_7

    .line 220
    .line 221
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 222
    .line 223
    iget-boolean v2, v1, Lcom/haima/hmcp/cloud/InternalCloudFile;->isSaveToGallery:Z

    .line 224
    .line 225
    if-eqz v2, :cond_5

    .line 226
    .line 227
    if-eqz v0, :cond_5

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-direct {p0, v1, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->saveToGallery(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)Landroid/net/Uri;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_6

    .line 238
    .line 239
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->getImagePath(Landroid/net/Uri;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_4

    .line 248
    .line 249
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/MediaUtil;->scanMedia(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 255
    .line 256
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v4, "cloud-file: save gallery path: "

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/MediaUtil;->scanMedia(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 295
    .line 296
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->copy()Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IWorkListener;->onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 303
    .line 304
    .line 305
    :cond_7
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 306
    .line 307
    if-eqz v0, :cond_8

    .line 308
    .line 309
    const/16 v1, 0x66

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_8
    const-string v0, "mHandler is null, while ack Download file finish and start next"

    .line 316
    .line 317
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_4
    return-void
.end method

.method private ackStartOrder()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStartTime:J

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_ACK:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "web-socket is null, to download task is stop"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "cloud-file: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0x67

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/16 v0, 0x69

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "mHandler is null, while ack start order"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private allowResendEndOrder()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelOrderCount:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelOrderCount:I

    .line 12
    .line 13
    return v1
.end method

.method private allowResendStartOrder()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendStartOrderCount:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendStartOrderCount:I

    .line 12
    .line 13
    return v1
.end method

.method private checkDownloadFile()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "cloud-file: remote md5:"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "download file md5:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "cloud-file: file or md5 is null"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    return v0
.end method

.method private complete()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "download is complete"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, v2, v0, v1, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->stopTask(Ljava/lang/String;ZZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private createPipe()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "&act=1&proto=5"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "connect 2 download url:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "cloud-file: "

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Lcom/haima/hmcp/cloud/DownloadTask$2;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/haima/hmcp/cloud/DownloadTask$2;-><init>(Lcom/haima/hmcp/cloud/DownloadTask;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->connect2Download(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private delIncompleteFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 2
    .line 3
    const-string v1, "cloud-file: "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "delete incomplete download file is null"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 14
    .line 15
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->INIT:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOAD_FINISH:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "delete:"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->delete()Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "no need to delete incomplete download file: "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "download is error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "cloud-file: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->delIncompleteFile()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->stopTask(Ljava/lang/String;ZZZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getCacheLength(II)I
    .locals 0

    .line 1
    mul-int/lit16 p2, p2, 0x400

    .line 2
    .line 3
    div-int/2addr p2, p1

    .line 4
    return p2
.end method

.method private getCancelOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    const-string v2, "type"

    .line 8
    .line 9
    const-string v3, "download_image"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "code"

    .line 15
    .line 16
    const-string v3, "cancel"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v2, "fileName"

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    nop

    .line 38
    move-object v1, v0

    .line 39
    goto :goto_2

    .line 40
    :catch_1
    move-exception p1

    .line 41
    move-object v1, v0

    .line 42
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    return-object v0

    .line 53
    :catchall_1
    nop

    .line 54
    :goto_2
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_3
    return-object v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getFileSegmentSize(I)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 5
    .line 6
    mul-int v0, v0, p1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->fileSegmentSize:I

    .line 10
    .line 11
    mul-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    return p1
.end method

.method private getImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v2, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0
.end method

.method private getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;
    .locals 8

    .line 1
    const-string v0, "md5sum"

    .line 2
    .line 3
    const-string v1, "mimeType"

    .line 4
    .line 5
    const-string v2, "fileSize"

    .line 6
    .line 7
    const-string v3, "message"

    .line 8
    .line 9
    const-string v4, "code"

    .line 10
    .line 11
    const-string v5, "type"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    new-instance v7, Lcom/haima/hmcp/cloud/AckOrderBean;

    .line 15
    .line 16
    invoke-direct {v7}, Lcom/haima/hmcp/cloud/AckOrderBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->fileSize:I

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->mimeType:Ljava/lang/String;

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, v7, Lcom/haima/hmcp/cloud/AckOrderBean;->md5sum:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p1

    .line 98
    move-object v6, v7

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p1

    .line 101
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    move-object v7, v6

    .line 105
    :cond_5
    :goto_1
    return-object v7
.end method

.method private getStartOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    const-string v2, "type"

    .line 8
    .line 9
    const-string v3, "download_image"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "code"

    .line 15
    .line 16
    const-string v3, "start"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v2, "fileName"

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v2, "bid"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v2, "cid"

    .line 40
    .line 41
    iget-object v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    const-string v2, "filePath"

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    nop

    .line 75
    move-object v1, v0

    .line 76
    goto :goto_2

    .line 77
    :catch_1
    move-exception p1

    .line 78
    move-object v1, v0

    .line 79
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    return-object v0

    .line 90
    :catchall_1
    nop

    .line 91
    :goto_2
    if-nez v1, :cond_2

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_3
    return-object v0
.end method

.method private getUploadInterval(I)I
    .locals 3

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/16 p1, 0x64

    return p1

    :cond_0
    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    const/16 p1, 0x32

    return p1

    :cond_1
    const/16 v1, 0xf

    const/16 v2, 0x14

    if-gt p1, v1, :cond_2

    return v2

    :cond_2
    if-gt p1, v2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private handleTempFile(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Lcom/haima/hmcp/cloud/DownloadTask$1;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask$1;-><init>(Lcom/haima/hmcp/cloud/DownloadTask;Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "cloud-file: temp file is not exists"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method private hasNextFile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private internalOrderAckDispatcher(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "cloud-file: "

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Download taks is stop by internal error"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "order ack is null when mStatus="

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string v0, "download_image"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const-string v2, "ignore"

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "cloud-file: not download message :"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v4, "cloud-file: receiver order ack: "

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "json parse error: "

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_2
    iget-object v4, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    iget-object v2, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/AckOrderBean;->isDownloadError()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_5

    .line 184
    .line 185
    new-instance p1, Ljava/lang/StringBuffer;

    .line 186
    .line 187
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 191
    .line 192
    if-eqz v1, :cond_4

    .line 193
    .line 194
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_4

    .line 201
    .line 202
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    .line 208
    .line 209
    const-string v1, "-"

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    .line 213
    .line 214
    :cond_4
    iget-object v1, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    .line 218
    .line 219
    const-string v1, "["

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    iget-object v1, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .line 228
    .line 229
    const-string v1, "]"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v2, "cloud-file: download message is error:"

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 263
    .line 264
    sget-object v4, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 265
    .line 266
    if-ne v2, v4, :cond_9

    .line 267
    .line 268
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/AckOrderBean;->isDownloadReady()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_8

    .line 273
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v2, "cloud-file: Response: download file is ready:"

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->md5sum:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_7

    .line 301
    .line 302
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 303
    .line 304
    iget-object v1, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->md5sum:Ljava/lang/String;

    .line 305
    .line 306
    iput-object v1, v0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 307
    .line 308
    iget v0, v3, Lcom/haima/hmcp/cloud/AckOrderBean;->fileSize:I

    .line 309
    .line 310
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->isDiskEnough(I)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_6

    .line 315
    .line 316
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->ackStartOrder()V

    .line 317
    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v1, "There\'s not enough disk space available to download target file: "

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_0

    .line 341
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v1, "Response: md5 error:"

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_0

    .line 362
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v1, "Response: code error:"

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_0

    .line 383
    :cond_9
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/AckOrderBean;->isDownloadFinish()Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_a

    .line 388
    .line 389
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->ackDownloadFinish()V

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :cond_a
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/AckOrderBean;->isDownloadCancel()Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-eqz v2, :cond_b

    .line 398
    .line 399
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOAD_CANCEL_ACK:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 400
    .line 401
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 402
    .line 403
    .line 404
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->delIncompleteFile()V

    .line 405
    .line 406
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v1, "Response: cancel download task success, "

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_0
    return-void

    .line 428
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v3, "internal error, mStatus: "

    .line 434
    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 439
    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v3, ", payload: "

    .line 444
    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v1, "internal error:"

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    return-void
.end method

.method private isDiskEnough(I)Z
    .locals 6

    .line 1
    const-string v0, "getExternalFilesDir return null"

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    iput-wide v2, v1, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    if-gez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Lcom/haima/hmcp/cloud/CloudFileManager;->getInstance()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/CloudFileManager;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    new-instance v0, Landroid/os/StatFs;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "mounted"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-long v2, v2

    .line 64
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    int-to-long v4, v0

    .line 69
    mul-long v2, v2, v4

    .line 70
    .line 71
    int-to-long v4, p1

    .line 72
    sub-long/2addr v2, v4

    .line 73
    const-wide/32 v4, 0x3200000

    .line 74
    .line 75
    .line 76
    cmp-long p1, v2, v4

    .line 77
    .line 78
    if-lez p1, :cond_3

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_3
    return v1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method private isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private prepareDownloadBinary(Lcom/haima/hmcp/cloud/InternalCloudFile;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "cloud-file: start downloading :path:"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "name:"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    :try_start_0
    iput-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    sget-object v2, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    const-string p1, "default download path error"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v0

    .line 81
    :cond_1
    new-instance v2, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 82
    .line 83
    sget-object v3, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object p1, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v2, p0, v3, v4, p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;-><init>(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    new-instance v2, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object p1, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v2, p0, v3, v4, p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;-><init>(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 113
    .line 114
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->init()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "cloud-file: start download filePath = "

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/io/FileOutputStream;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    .line 167
    .line 168
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_1
    return v0

    .line 184
    :cond_4
    :goto_2
    const-string p1, "download file is null"

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v0
.end method

.method private renameDownloadTmpFile(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 1
    const-string v0, "crash when donwnload file rename: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "CP_"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->renameTo(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v4, "cloud-file: rename from:"

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->access$000(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ", to:"

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    :try_start_0
    const-string v2, "type"

    .line 101
    .line 102
    const-string v3, "donwload"

    .line 103
    .line 104
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v2, "action"

    .line 108
    .line 109
    const-string v3, "save picture"

    .line 110
    .line 111
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const-string v2, "file_name"

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v2, "file_size"

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v2, "rename_success"

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v2, "12617"

    .line 142
    .line 143
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto :goto_0

    .line 172
    :catch_1
    move-exception p1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_1

    .line 197
    .line 198
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    return-object p2

    .line 202
    :cond_2
    :goto_1
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    const-string p2, "cloud-file: updatePhotoMedia error file or context null"

    .line 205
    .line 206
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1
.end method

.method private saveData(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_ACK:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v3, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOADING:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 9
    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    instance-of v0, p1, [B

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-array p1, v2, [B

    .line 20
    .line 21
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "cloud-file: receive file segment when status: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "; byte length: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    array-length p1, p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOADING:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :try_start_0
    check-cast p1, [B

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    array-length v0, p1

    .line 67
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "cloud-file: downloading file data size: "

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;

    .line 90
    .line 91
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const-string p1, "download binary data is null"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception p1

    .line 107
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "cloud-file: "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method private saveToGallery(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->getFileSuffix()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "image/"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v3, 0x1d

    .line 35
    .line 36
    if-lt v2, v3, :cond_0

    .line 37
    .line 38
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "relative_path"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "."

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v2, "_data"

    .line 82
    .line 83
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Landroid/content/ContentValues;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v5, "_display_name"

    .line 93
    .line 94
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "mime_type"

    .line 98
    .line 99
    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 120
    .line 121
    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    .line 123
    .line 124
    const/16 p2, 0x200

    .line 125
    .line 126
    :try_start_1
    new-array p2, p2, [B

    .line 127
    .line 128
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_1
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, -0x1

    .line 137
    if-eq v2, v3, :cond_2

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p2

    .line 152
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    move-object v6, v1

    .line 161
    move-object v1, v0

    .line 162
    move-object v0, v6

    .line 163
    goto :goto_6

    .line 164
    :catch_1
    move-exception p2

    .line 165
    move-object v6, v1

    .line 166
    move-object v1, v0

    .line 167
    move-object v0, v6

    .line 168
    goto :goto_3

    .line 169
    :catchall_1
    move-exception p1

    .line 170
    move-object v1, v0

    .line 171
    goto :goto_6

    .line 172
    :catch_2
    move-exception p2

    .line 173
    move-object v1, v0

    .line 174
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    .line 176
    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :catch_3
    move-exception p2

    .line 184
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 188
    .line 189
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :catch_4
    move-exception p2

    .line 194
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :cond_4
    :goto_5
    return-object p1

    .line 198
    :catchall_2
    move-exception p1

    .line 199
    :goto_6
    if-eqz v0, :cond_5

    .line 200
    .line 201
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 202
    .line 203
    .line 204
    goto :goto_7

    .line 205
    :catch_5
    move-exception p2

    .line 206
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 210
    .line 211
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 212
    .line 213
    .line 214
    goto :goto_8

    .line 215
    :catch_6
    move-exception p2

    .line 216
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_8
    throw p1
.end method

.method private sendCancelMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x6c

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "mHandler is null, while send cancel message:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private sendCancelOrder()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOAD_CANCEL_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->getCancelOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "cloud-file: sendFinishOrder:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const-string v0, "create cancel order error"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendOrder(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {p0, v1, v2, v0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private sendDownloadBytesMessage([B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x6a

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "mHandler is null, while downloading bytes"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private sendErrorMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x68

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "mHandler is null, while send error message:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private sendOrder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: sendOrder: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 24
    .line 25
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 26
    .line 27
    invoke-direct {p0, v1, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "cloud-file: download task: download web-socket is not active: create socket"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/16 p1, 0x69

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "mHandler is null, while send order:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 71
    .line 72
    invoke-interface {v0, v2, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    return p1
.end method

.method private sendStartOrder()V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: sendStartOrder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->hasNextFile()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x6b

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "mHandler is null, while task complete"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 43
    .line 44
    const/16 v3, 0x66

    .line 45
    .line 46
    const-string v4, "mHandler is null, while send start order:"

    .line 47
    .line 48
    const-string v5, "12617"

    .line 49
    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    sget-object v6, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Lcom/haima/hmcp/cloud/InternalCloudFile;->isAvailable(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 64
    .line 65
    sget-object v6, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 66
    .line 67
    invoke-direct {p0, v2, v6}, Lcom/haima/hmcp/cloud/DownloadTask;->isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 74
    .line 75
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->prepareDownloadBinary(Lcom/haima/hmcp/cloud/InternalCloudFile;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->getStartOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v6, "start order:"

    .line 92
    .line 93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v5, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    const-string v0, "create start order error"

    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendErrorMessage(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void

    .line 144
    :cond_5
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendOrder(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    invoke-virtual {p0, v2, v3, v1}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    const-string v1, "cloud-file: sendStartOrder: WebSocket is not active"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void

    .line 166
    :cond_7
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v7, "download file is null or param is not available, file = "

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-nez v6, :cond_8

    .line 184
    .line 185
    const-string v1, "null"

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_8
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v7, "cloud-file: "

    .line 198
    .line 199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-static {v0, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 221
    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_5
    return-void
.end method

.method private sendStopMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x65

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "mHandler is null, while send stop message:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 2
    .line 3
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download is stop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloud-file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->stopTask(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private stopTask(Ljava/lang/String;ZZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: download task is stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/haima/hmcp/business/IWebSocket;->disconnect2Download()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 27
    .line 28
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 59
    .line 60
    :cond_3
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 63
    .line 64
    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOADING:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 65
    .line 66
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->handleTempFile(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->releaseFile()V

    .line 79
    .line 80
    .line 81
    :cond_5
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownFile:Lcom/haima/hmcp/cloud/DownloadTask$HmFile;

    .line 82
    .line 83
    :goto_1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 89
    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IWorkListener;->onFinish(Ljava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    if-eqz p3, :cond_7

    .line 98
    .line 99
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 100
    .line 101
    const/4 p3, 0x0

    .line 102
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p2, p3, p1, v0}, Lcom/haima/hmcp/cloud/IWorkListener;->onStop(ILjava/lang/String;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    if-eqz p4, :cond_9

    .line 108
    .line 109
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 110
    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    iget-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/haima/hmcp/cloud/InternalCloudFile;->copy()Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {p3, p2, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 124
    .line 125
    invoke-interface {p2, v1, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_9
    :goto_2
    iput-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "cancel called"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelMessage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getStatus()I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: download task status: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected bridge synthetic onTimeOut(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->onTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-eq v0, v1, :cond_0

    sget-object v2, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->DOWNLOAD_CANCEL_SEND:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-eq v0, v2, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknow download status when onTimeOut, mStatus="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    const-string p1, "Download stop by internal error"

    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud-file: download status is wrong when onTimeOut, mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "cloud-file: "

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-ne p1, v1, :cond_1

    const-string p1, "start order is empty when onTimeOut"

    goto :goto_0

    :cond_1
    const-string p1, "cancel order is empty when onTimeOut"

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->allowResendStartOrder()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/DownloadTask;->allowResendEndOrder()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-ne v0, v1, :cond_4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start order ack is timeout and retry, retry count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendStartOrderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel order ack is timeout and retry, retry count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->sendCancelOrderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_2
    sget-object v1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendOrder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    goto :goto_4

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mStatus:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    if-ne p1, v1, :cond_6

    const-string p1, "start order ack retry over max, and time out"

    goto :goto_3

    :cond_6
    const-string p1, "cancel order ack retry over max, and time out"

    .line 19
    :goto_3
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method orderAckDispatcher(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x6d

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "mHandler is null, while ordr ack:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IWorkListener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    sget-object p2, Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;->INIT:Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/DownloadTask;->setStatus(Lcom/haima/hmcp/cloud/DownloadTask$DownloadTaskStatus;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask;->mDownloadFiles:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->mHandler:Lcom/haima/hmcp/cloud/DownloadTask$DownloadHandler;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x66

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string p1, "mHandler is null, while send start order"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/DownloadTask;->error(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void

    .line 53
    :cond_3
    :goto_2
    sget-object p1, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v0, "cloud-file: "

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "file list is null or size = 0"

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud-file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stop called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/DownloadTask;->sendStopMessage(Ljava/lang/String;)V

    return-void
.end method
