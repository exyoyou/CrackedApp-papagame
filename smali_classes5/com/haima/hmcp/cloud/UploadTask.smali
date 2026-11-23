.class Lcom/haima/hmcp/cloud/UploadTask;
.super Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;,
        Lcom/haima/hmcp/cloud/UploadTask$Uploading;,
        Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;
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
.field private static final FILE_SEGMENT_COEFFICIENT:I = 0x4

.field private static final FILE_SEGMENT_SIZE:I = 0x400

.field private static final KEY_ORDER_CODE:Ljava/lang/String; = "code"

.field private static final KEY_ORDER_CODE_END:Ljava/lang/String; = "end"

.field private static final KEY_ORDER_CODE_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_ORDER_CODE_START:Ljava/lang/String; = "start"

.field private static final KEY_ORDER_FILE_BID:Ljava/lang/String; = "bid"

.field private static final KEY_ORDER_FILE_CID:Ljava/lang/String; = "cid"

.field private static final KEY_ORDER_FILE_IMAGE_TYPE:Ljava/lang/String; = "imageType"

.field private static final KEY_ORDER_FILE_MD5:Ljava/lang/String; = "md5sum"

.field private static final KEY_ORDER_FILE_NAME:Ljava/lang/String; = "fileName"

.field private static final KEY_ORDER_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field private static final KEY_ORDER_FILE_TYPE:Ljava/lang/String; = "mimeType"

.field private static final KEY_ORDER_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_ORDER_TYPE_UPLOAD:Ljava/lang/String; = "upload_image"

.field private static final MSG_CREATE_SOCKET:I = 0x69

.field private static final MSG_ORDER_ACK:I = 0x6d

.field private static final MSG_SEND_END_ORDER:I = 0x6c

.field private static final MSG_SEND_START_ORDER:I = 0x66

.field private static final MSG_START:I = 0x64

.field private static final MSG_STOP:I = 0x65

.field private static final MSG_TASK_COMPLETE:I = 0x6b

.field private static final MSG_UPLOAD_ERROR:I = 0x68

.field private static final MSG_UPLOAD_FILE:I = 0x67

.field private static final RECONNECT_WEB_SOCKET_INTERVAL:I = 0x9c4

.field private static final RECONNECT_WEB_SOCKET_MAX:I = 0xa

.field private static final SEND_END_ORDER_MAX:I = 0x5

.field private static final SEND_START_ORDER_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UploadTask"

.field private static mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;


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

.field private mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

.field private mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

.field private mListener:Lcom/haima/hmcp/cloud/IWorkListener;

.field private mReconnectSocketCount:I

.field private mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

.field private mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

.field private mUploadFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

.field private sendEndOrderCount:I

.field private sendStartOrderCount:I

.field private uploadInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->uploadInterval:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->cacheSize:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/utils/DevDebugManager;->getInstance()Lcom/haima/hmcp/utils/DevDebugManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/DevDebugManager;->getDevDebugConfig()Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCount()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->getFileSegmentSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->getUploadInterval(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->uploadInterval:I

    .line 52
    .line 53
    iget p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->cacheSize:I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

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
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->cacheSize:I

    .line 64
    .line 65
    iget p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 66
    .line 67
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/cloud/UploadTask;->getCacheLength(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->cacheLength:I

    .line 72
    .line 73
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v0, "cloud-file: fileSegmentSize:"

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "; uploadInterval:"

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->uploadInterval:I

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mReconnectSocketCount:I

    .line 109
    .line 110
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->cache:Ljava/util/ArrayList;

    .line 116
    .line 117
    new-instance p1, Landroid/os/HandlerThread;

    .line 118
    .line 119
    const-string p2, "uploading"

    .line 120
    .line 121
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->handlerThread:Landroid/os/HandlerThread;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 130
    .line 131
    if-eqz p1, :cond_0

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    sput-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 142
    .line 143
    :cond_0
    new-instance p1, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 144
    .line 145
    iget-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->handlerThread:Landroid/os/HandlerThread;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;-><init>(Lcom/haima/hmcp/cloud/UploadTask;Landroid/os/Looper;)V

    .line 152
    .line 153
    .line 154
    sput-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 155
    .line 156
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->stop(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/cloud/UploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->complete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/cloud/UploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->internalOrderAckDispatcher(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/cloud/UploadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/business/IWebSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/beans/CloudFileConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/IWorkListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/cloud/UploadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$408(Lcom/haima/hmcp/cloud/UploadTask;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mReconnectSocketCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/cloud/UploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->prepareSendStartOrder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/InternalCloudFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/cloud/UploadTask;Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->pushFileToTask(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/cloud/UploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->createPipe()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ackEndOrder()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->END_ORDER_ACK:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "cloud-file: uploaded file success"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->copy()Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IWorkListener;->onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x66

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "Handler is null when send MSG_SEND_START_ORDER message from ackEndOrder called"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private ackStartOrder()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->START_ORDER_ACK:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "web-socket is null, to upload task is stop"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "cloud-file: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x67

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "Handler is null when send MSG_UPLOAD_FILE message"

    .line 57
    .line 58
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/16 v1, 0x69

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "Handler is null when send MSG_CREATE_SOCKET message"

    .line 73
    .line 74
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method private allowResendEndOrder()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrderCount:I

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
    iput v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrderCount:I

    .line 12
    .line 13
    return v1
.end method

.method private allowResendStartOrder()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendStartOrderCount:I

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
    iput v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendStartOrderCount:I

    .line 12
    .line 13
    return v1
.end method

.method private complete()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

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
    const-string v2, "upload is complete"

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IWorkListener;->onFinish(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->stopTask()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private createPipe()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->WEB_SOCKET_CREATE:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "&act=1&proto=4"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Lcom/haima/hmcp/cloud/UploadTask$1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/haima/hmcp/cloud/UploadTask$1;-><init>(Lcom/haima/hmcp/cloud/UploadTask;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->connect2Upload(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->copy()Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->stopTask()V

    .line 37
    .line 38
    .line 39
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

.method private getEndOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;
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
    const-string v3, "upload_image"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "code"

    .line 15
    .line 16
    const-string v3, "end"

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

.method private getFileSegmentSize(I)I
    .locals 0

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method private getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;
    .locals 5

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    const-string v1, "code"

    .line 4
    .line 5
    const-string v2, "type"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Lcom/haima/hmcp/cloud/AckOrderBean;

    .line 9
    .line 10
    invoke-direct {v4}, Lcom/haima/hmcp/cloud/AckOrderBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, v4, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, v4, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v4, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    move-object v3, v4

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception p1

    .line 59
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    move-object v4, v3

    .line 63
    :cond_2
    :goto_1
    return-object v4
.end method

.method private getStartOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;
    .locals 5

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
    const-string v3, "upload_image"

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
    const-string v2, "imageType"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getImageType()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v2, "mimeType"

    .line 40
    .line 41
    iget-object v3, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v2, "fileSize"

    .line 47
    .line 48
    iget-wide v3, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v2, "md5sum"

    .line 54
    .line 55
    iget-object p1, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string p1, "bid"

    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string p1, "cid"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    nop

    .line 86
    move-object v1, v0

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p1

    .line 89
    move-object v1, v0

    .line 90
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .line 92
    .line 93
    if-nez v1, :cond_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    .line 101
    :catchall_1
    nop

    .line 102
    :goto_2
    if-nez v1, :cond_1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
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

.method private hasNextFile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

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
    const-string p1, "Upload taks is stop by internal error"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

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
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

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
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string v0, "upload_image"

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
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "cloud-file: is not upload message:"

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
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "json parse error: "

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_2
    iget-object p1, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    iget-object p1, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUnable()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    const-string v2, "["

    .line 161
    .line 162
    const-string v3, "]"

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v4, "upload is enable: "

    .line 172
    .line 173
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v4, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_4
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadError()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    new-instance p1, Ljava/lang/StringBuffer;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v4, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 232
    .line 233
    if-eqz v4, :cond_5

    .line 234
    .line 235
    iget-object v4, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_5

    .line 242
    .line 243
    iget-object v4, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 244
    .line 245
    iget-object v4, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    .line 249
    .line 250
    const-string v4, "-"

    .line 251
    .line 252
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    .line 254
    .line 255
    :cond_5
    iget-object v4, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    .line 262
    .line 263
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 276
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 300
    .line 301
    sget-object v2, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 302
    .line 303
    if-ne p1, v2, :cond_a

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadSuccess()Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_9

    .line 310
    .line 311
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->hasNextFile()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_7

    .line 316
    .line 317
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_7
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 324
    .line 325
    if-eqz p1, :cond_8

    .line 326
    .line 327
    const/16 v0, 0x66

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_8
    const-string p1, "Handler is null when upload is success ack"

    .line 334
    .line 335
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_0

    .line 339
    :cond_9
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->ackStartOrder()V

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_a
    sget-object v2, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 344
    .line 345
    if-ne p1, v2, :cond_c

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadSuccess()Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_b

    .line 352
    .line 353
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->ackEndOrder()V

    .line 354
    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v2, "sdk upload success but receive rom error. [type:"

    .line 363
    .line 364
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    iget-object v2, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v2, "][code:"

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget-object v2, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, "][message:"

    .line 383
    .line 384
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 400
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_0
    return-void

    .line 426
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v0, "upload status:"

    .line 432
    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 437
    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, " when receive order ack. mStatus="

    .line 442
    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    return-void
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

.method private prepareSendStartOrder()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: sendStartOrder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->hasNextFile()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

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
    const-string v0, "Handler is null when send MSG_TASK_COMPLETE message from sendStartOrder-1 called"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

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
    if-eqz v1, :cond_6

    .line 47
    .line 48
    sget-object v4, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/haima/hmcp/cloud/InternalCloudFile;->isAvailable(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/UploadTask;->getStartOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "start order:"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "12607"

    .line 81
    .line 82
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const-string v0, "create start order error"

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->error(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const-string v0, "Handler is null when send MSG_SEND_START_ORDER message from sendStartOrder-3 called"

    .line 105
    .line 106
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :cond_4
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->sendStartOrder(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-virtual {p0, v1, v2, v0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void

    .line 126
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v4, "cloud-file: "

    .line 132
    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, "upload file is null or param is not available"

    .line 137
    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_7
    const-string v0, "Handler is null when send MSG_SEND_START_ORDER message from sendStartOrder-2 called"

    .line 162
    .line 163
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_3
    return-void
.end method

.method private pushFileToTask(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->UPLOADING:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "pushFileToTask"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 33
    .line 34
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 35
    .line 36
    iget v2, p0, Lcom/haima/hmcp/cloud/UploadTask;->uploadInterval:I

    .line 37
    .line 38
    invoke-direct {v0, p0, v2}, Lcom/haima/hmcp/cloud/UploadTask$Uploading;-><init>(Lcom/haima/hmcp/cloud/UploadTask;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 42
    .line 43
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aput-object p1, v1, v3

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->push(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private sendEndOrder()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 2
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    const-string v1, "cloud-file: sendFinishOrder"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->hasNextFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mCurrentHandleFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->getEndOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "create end order error"

    .line 7
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->error(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    if-eqz v0, :cond_1

    const/16 v1, 0x66

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "Handler is null when send MSG_SEND_START_ORDER message from sendEndOrder called"

    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_2
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private sendEndOrder(Ljava/lang/String;)Z
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/cloud/UploadTask;->isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "upload task: upload web-socket is not active"

    .line 14
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud-file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud-file: order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "WebSocket is null when sendEndOrder called"

    .line 19
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private sendStartOrder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/cloud/UploadTask;->isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "cloud-file: upload task: upload web-socket is not active: create socket"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 19
    .line 20
    const/16 v0, 0x69

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "cloud-file: order: "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p1, "WebSocket is null when sendStartOrder called"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method private sendStopMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

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
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "Handler is null when sendStopMessage called"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload is stop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloud-file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    invoke-interface {v0, v1, p1, v2}, Lcom/haima/hmcp/cloud/IWorkListener;->onStop(ILjava/lang/String;Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->stopTask()V

    return-void
.end method

.method private stopTask()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

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
    const-string v2, "upload task is stop"

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
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mTask:Lcom/haima/hmcp/cloud/UploadTask$Uploading;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/haima/hmcp/business/IWebSocket;->disconnect2Upload()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    .line 54
    .line 55
    :cond_2
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 69
    .line 70
    .line 71
    sput-object v1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 72
    .line 73
    :cond_3
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 76
    .line 77
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cloud-file: upload task status: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

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

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->onTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-eq v0, v1, :cond_0

    sget-object v2, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-eq v0, v2, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknow upload status when onTimeOut, mStatus="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    const-string p1, "Upload stop by internal error"

    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud-file: upload status is wrong when onTimeOut, mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "cloud-file: "

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-ne p1, v1, :cond_1

    const-string p1, "start order is empty when onTimeOut"

    goto :goto_0

    :cond_1
    const-string p1, "end order is empty when onTimeOut"

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->allowResendStartOrder()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/UploadTask;->allowResendEndOrder()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-ne v0, v1, :cond_4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start order ack is timeout and retry, retry count:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendStartOrderCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end order ack is timeout and retry, retry count:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrderCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_2
    sget-object v3, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStartOrder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendEndOrder(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->startTimeCountDown(JLjava/lang/Object;)V

    goto :goto_5

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    if-ne p1, v1, :cond_7

    const-string p1, "start order ack is time out"

    goto :goto_4

    :cond_7
    const-string p1, "end order ack is time out"

    .line 19
    :goto_4
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method orderAckDispatcher(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreStartOrderAck()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mStatus:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 24
    .line 25
    sget-object v4, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 26
    .line 27
    if-ne v1, v4, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreEndOrderAck()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_1
    sget-object v1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "cloud-file: ignoreStartAck: "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, "; ignoreEndAck: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "cloud-file: receiver order ack: "

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    if-eqz v0, :cond_2

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;->cancelTimeCountDown()V

    .line 96
    .line 97
    .line 98
    :goto_2
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v1, 0x6d

    .line 107
    .line 108
    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    .line 110
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    const-wide/16 v3, 0x4

    .line 123
    .line 124
    mul-long v1, v1, v3

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
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
    iput-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mListener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    if-eqz p1, :cond_2

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
    sget-object p2, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->INIT:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/UploadTask;->setStatus(Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

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
    iput-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

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
    iget-object p2, p0, Lcom/haima/hmcp/cloud/UploadTask;->mUploadFiles:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->mHandler:Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 38
    .line 39
    const/16 p2, 0x66

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    :try_start_0
    const-string p2, "status"

    .line 50
    .line 51
    const-string v0, "upload_config"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string p2, "file_segment_coefficient"

    .line 57
    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string p2, "file_segment_size"

    .line 68
    .line 69
    iget v0, p0, Lcom/haima/hmcp/cloud/UploadTask;->fileSegmentSize:I

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p2

    .line 76
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_1
    const-string p2, "12607"

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    :goto_2
    sget-object p1, Lcom/haima/hmcp/cloud/UploadTask;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v0, "cloud-file: "

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "file list is null or size = 0"

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public stop()V
    .locals 1

    const-string v0, "cancel called"

    .line 1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/UploadTask;->sendStopMessage(Ljava/lang/String;)V

    return-void
.end method
