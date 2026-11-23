.class public Lcom/haima/hmcp/cloud/BatchUploadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;,
        Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;
    }
.end annotation


# static fields
.field private static final ERROR_ACK_IGNORE:I = 0x10

.field private static final ERROR_ACK_UNABLE:I = 0x11

.field private static final ERROR_BATCH_STATUS:I = 0xb

.field public static final ERROR_FILE_CHECK:I = 0x13

.field private static final ERROR_FILE_EMPTY:I = 0xa

.field private static final ERROR_ORDER_RETRY_MAX:I = 0xe

.field private static final ERROR_UPLOAD:I = 0xf

.field private static final ERROR_WEBSOCKET_DISCONNECT:I = 0xd

.field private static final ERROR_WEBSOCKET_NULL:I = 0x12

.field private static final ERROR_WEBSOCKET_RETRY_MAX:I = 0xc

.field private static final FILE_SEGMENT_SIZE:I = 0x400

.field private static final KEY_CURRENT_FILE_INDEX:Ljava/lang/String; = "fileIndex"

.field private static final KEY_ORDER_CODE:Ljava/lang/String; = "code"

.field private static final KEY_ORDER_CODE_END:Ljava/lang/String; = "end"

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

.field private static final KEY_PROTOCOL_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_UPLOAD_FILE_COUNT:Ljava/lang/String; = "totalFiles"

.field private static final MSG_CREATE_SOCKET:I = 0x69

.field private static final MSG_END_ACK_TIMEOUT:I = 0x6f

.field private static final MSG_ORDER_ACK:I = 0x6d

.field private static final MSG_SEND_END_ORDER:I = 0x6c

.field private static final MSG_START_ACK_TIMEOUT:I = 0x6a

.field private static final MSG_UPLOAD_ERROR:I = 0x68

.field private static final MSG_UPLOAD_FAIL:I = 0x6e

.field private static final MSG_UPLOAD_FILE:I = 0x67

.field private static final RECONNECT_WEB_SOCKET_INTERVAL:I = 0x9c4

.field private static final RECONNECT_WEB_SOCKET_MAX:I = 0xa

.field private static final SEND_END_ORDER_MAX:I = 0x5

.field private static final SEND_START_ORDER_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BatchUploadTask"


# instance fields
.field private final PROTOCOL_VERSION:I

.field private cacheLength:I

.field private cacheSize:I

.field private fileSegmentSize:I

.field private mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

.field private mCurrentFileIndex:I

.field private mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

.field private mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

.field private mReconnectSocketCount:I

.field private mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

.field private mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

.field private mTotalFilesCount:I

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

.method public constructor <init>(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->PROTOCOL_VERSION:I

    .line 6
    .line 7
    const/16 v0, 0x400

    .line 8
    .line 9
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadInterval:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->cacheSize:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendStartOrderCount:I

    .line 20
    .line 21
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 22
    .line 23
    sget-object v1, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCount()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getFileSegmentSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getUploadInterval(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadInterval:I

    .line 52
    .line 53
    iget p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->cacheSize:I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

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
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->cacheSize:I

    .line 64
    .line 65
    iget p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 66
    .line 67
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getCacheLength(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->cacheLength:I

    .line 72
    .line 73
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "cloud-file: fileSegmentSize:"

    .line 81
    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "; uploadInterval:"

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadInterval:I

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mReconnectSocketCount:I

    .line 108
    .line 109
    new-instance p1, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 110
    .line 111
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 115
    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    .line 117
    .line 118
    const-string p2, "UploadTaskV2"

    .line 119
    .line 120
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 126
    .line 127
    .line 128
    new-instance p2, Lcom/haima/hmcp/cloud/BatchUploadTask$1;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p2, p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask$1;-><init>(Lcom/haima/hmcp/cloud/BatchUploadTask;Landroid/os/Looper;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 138
    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/BatchUploadTask;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleTimeoutMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/beans/CloudFileConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/BatchUploadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->processNextFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/cloud/IUploadSummaryListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/cloud/BatchUploadTask;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/cloud/BatchUploadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$608(Lcom/haima/hmcp/cloud/BatchUploadTask;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mReconnectSocketCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mReconnectSocketCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/cloud/BatchUploadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/business/IWebSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method private createPipe()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->WEB_SOCKET_CREATE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "&act=1&proto=4"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v2, Lcom/haima/hmcp/cloud/BatchUploadTask$2;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/haima/hmcp/cloud/BatchUploadTask$2;-><init>(Lcom/haima/hmcp/cloud/BatchUploadTask;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->connect2Upload(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V

    .line 40
    .line 41
    .line 42
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
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "Invalid parameters: upload file is null"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    const-string v2, "version"

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v2, "type"

    .line 24
    .line 25
    const-string v3, "upload_image"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v2, "code"

    .line 31
    .line 32
    const-string v3, "end"

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v2, "fileName"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string p1, "fileIndex"

    .line 47
    .line 48
    iget v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string p1, "totalFiles"

    .line 56
    .line 57
    iget v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTotalFilesCount:I

    .line 58
    .line 59
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    nop

    .line 70
    move-object v1, v0

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    move-exception p1

    .line 73
    move-object v1, v0

    .line 74
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    return-object v0

    .line 85
    :catchall_1
    nop

    .line 86
    :goto_2
    if-nez v1, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_3
    return-object v0
.end method

.method private getFileSegmentSize(I)I
    .locals 0

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method private getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;
    .locals 7

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    const-string v2, "code"

    .line 6
    .line 7
    const-string v3, "type"

    .line 8
    .line 9
    const-string v4, "version"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    new-instance v6, Lcom/haima/hmcp/cloud/AckOrderBean;

    .line 13
    .line 14
    invoke-direct {v6}, Lcom/haima/hmcp/cloud/AckOrderBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, v6, Lcom/haima/hmcp/cloud/AckOrderBean;->version:I

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, v6, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, v6, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, v6, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 69
    .line 70
    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, v6, Lcom/haima/hmcp/cloud/AckOrderBean;->fileName:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    move-object v5, v6

    .line 85
    goto :goto_0

    .line 86
    :catch_1
    move-exception p1

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    move-object v6, v5

    .line 91
    :cond_4
    :goto_1
    return-object v6
.end method

.method private getStartOrder(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "Invalid parameters: upload file is null"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Unsupported protocol version: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "version"

    .line 46
    .line 47
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string p1, "type"

    .line 51
    .line 52
    const-string v2, "upload_image"

    .line 53
    .line 54
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string p1, "code"

    .line 58
    .line 59
    const-string v2, "start"

    .line 60
    .line 61
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string p1, "fileName"

    .line 65
    .line 66
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string p1, "imageType"

    .line 76
    .line 77
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getImageType()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string p1, "mimeType"

    .line 87
    .line 88
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string p1, "fileSize"

    .line 96
    .line 97
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 98
    .line 99
    iget-wide v2, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 100
    .line 101
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string p1, "md5sum"

    .line 105
    .line 106
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    const-string p1, "bid"

    .line 114
    .line 115
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    .line 121
    .line 122
    const-string p1, "cid"

    .line 123
    .line 124
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string p1, "fileIndex"

    .line 132
    .line 133
    iget v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 134
    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    const-string p1, "totalFiles"

    .line 141
    .line 142
    iget v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTotalFilesCount:I

    .line 143
    .line 144
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-object p1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "Failed to generate  start order: "

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v1
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

.method private handleInvalidStatus()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unknow upload status when onTimeOut, mStatus="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "Upload stop by internal error"

    .line 24
    .line 25
    const/16 v1, 0xb

    .line 26
    .line 27
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "cloud-file: upload status is wrong when onTimeOut, mStatus="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private handleMaxRetriesExceeded(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "start"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "end"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " order ack is time out after retry max count"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0xe

    .line 29
    .line 30
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "cloud-file: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private handleOrderTimeout(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendStartOrderCount:I

    .line 4
    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    iput v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendStartOrderCount:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendEndOrderCount:I

    .line 11
    .line 12
    add-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    iput v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendEndOrderCount:I

    .line 15
    .line 16
    :goto_0
    const/4 v1, 0x5

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleRetry(Ljava/lang/String;ZI)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleMaxRetriesExceeded(Z)V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-void
.end method

.method private handleRetry(Ljava/lang/String;ZI)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "start"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "end"

    .line 7
    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " order ack is timeout and retry, retry count:"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "cloud-file: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendOrder(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    const/16 p2, 0x6a

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 p2, 0x6f

    .line 66
    .line 67
    :goto_1
    iput p2, p3, Landroid/os/Message;->what:I

    .line 68
    .line 69
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method private handleTimeoutMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto :goto_3

    .line 11
    :pswitch_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->orderAckDispatcher(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :pswitch_3
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->prepareSendEndOrder()V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handlerAckTimeOut(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :pswitch_5
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->createPipe()V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :pswitch_7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->pushFileToTask(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleUploadFileError error: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;->onFileError(Lcom/haima/hmcp/cloud/InternalCloudFile;Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->processNextFile()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private handleUploadFileSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleUploadFileSuccess: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;->onFileSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->processNextFile()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private handlerAckTimeOut(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleInvalidStatus()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleOrderTimeout(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleOrderTimeout(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
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

.method private onEndOrderAck()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendStartOrderCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendEndOrderCount:I

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mReconnectSocketCount:I

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->END_ORDER_ACK:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "cloud-file: uploaded file success"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private onStartOrderAck()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->START_ORDER_ACK:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x12

    .line 10
    .line 11
    const-string v1, "web-socket is null, to upload task is stop"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "cloud-file: "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x67

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "Handler is null when send MSG_UPLOAD_FILE message"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/16 v1, 0x69

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "Handler is null when send MSG_CREATE_SOCKET message"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method private orderAckDispatcher(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "cloud-file: "

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "order ack is null when mStatus="

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 30
    .line 31
    const-string v3, "Upload taks is stop by internal error"

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v3}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
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
    const-string v3, "ignore"

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getOrderBean(Ljava/lang/String;)Lcom/haima/hmcp/cloud/AckOrderBean;

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
    const-string v3, "json parse error: "

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 140
    .line 141
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 146
    .line 147
    sget-object v4, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 148
    .line 149
    if-ne p1, v4, :cond_3

    .line 150
    .line 151
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    const/16 v5, 0x6a

    .line 156
    .line 157
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    .line 159
    .line 160
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 161
    .line 162
    sget-object v5, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 163
    .line 164
    if-ne p1, v5, :cond_4

    .line 165
    .line 166
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 167
    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    const/16 v6, 0x6f

    .line 171
    .line 172
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    .line 174
    .line 175
    :cond_4
    iget-object p1, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    const/16 p1, 0x10

    .line 184
    .line 185
    iget-object v3, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {p0, p1, v3}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUnable()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    const-string v3, "["

    .line 195
    .line 196
    const-string v6, "]"

    .line 197
    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v1, "upload is enable: "

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const/16 v0, 0x11

    .line 251
    .line 252
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_6
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadError()Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    new-instance p1, Ljava/lang/StringBuffer;

    .line 263
    .line 264
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v4, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 268
    .line 269
    if-eqz v4, :cond_7

    .line 270
    .line 271
    iget-object v4, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-nez v4, :cond_7

    .line 278
    .line 279
    iget-object v4, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 280
    .line 281
    iget-object v4, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    .line 285
    .line 286
    const-string v4, "-"

    .line 287
    .line 288
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    .line 290
    .line 291
    :cond_7
    iget-object v4, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    .line 298
    .line 299
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 332
    .line 333
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 338
    .line 339
    if-ne p1, v4, :cond_a

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadSuccess()Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_9

    .line 346
    .line 347
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 348
    .line 349
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 350
    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_9
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadReady()Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_c

    .line 358
    .line 359
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->onStartOrderAck()V

    .line 360
    .line 361
    .line 362
    goto :goto_0

    .line 363
    :cond_a
    if-ne p1, v5, :cond_c

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/AckOrderBean;->isUploadSuccess()Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_b

    .line 370
    .line 371
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->onEndOrderAck()V

    .line 372
    .line 373
    .line 374
    goto :goto_0

    .line 375
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v3, "sdk upload success but receive rom error. [type:"

    .line 381
    .line 382
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    iget-object v3, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->type:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v3, "][code:"

    .line 391
    .line 392
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    iget-object v3, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v3, "][message:"

    .line 401
    .line 402
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object v0, v0, Lcom/haima/hmcp/cloud/AckOrderBean;->message:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 418
    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 441
    .line 442
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_c
    :goto_0
    return-void
.end method

.method private prepareSendEndOrder()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->END_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "cloud-file: sendFinishOrder"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getEndOrder(Lcom/haima/hmcp/cloud/InternalCloudFile;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    const-string v2, "create end order error"

    .line 28
    .line 29
    invoke-direct {p0, v0, v1, v2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendOrder(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v2, 0x6f

    .line 44
    .line 45
    iput v2, v1, Landroid/os/Message;->what:I

    .line 46
    .line 47
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private prepareSendStartOrder()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: sendStartOrder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->START_ORDER_SEND:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    sget-object v3, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/cloud/InternalCloudFile;->isAvailable(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->getStartOrder(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "start order:"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "12607"

    .line 49
    .line 50
    invoke-static {v3, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const-string v0, "create start order error"

    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 62
    .line 63
    invoke-direct {p0, v1, v2, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->sendOrder(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/16 v2, 0x6a

    .line 78
    .line 79
    iput v2, v1, Landroid/os/Message;->what:I

    .line 80
    .line 81
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFileConfig;->getAckTimeout()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "cloud-file: "

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, "upload file is null or param is not available"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 118
    .line 119
    invoke-direct {p0, v0, v2, v3}, Lcom/haima/hmcp/cloud/BatchUploadTask;->handleUploadFileError(Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private processNextFile()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTotalFilesCount:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;->onComplete()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->stopTask()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentUploadFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->prepareSendStartOrder()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private pushFileToTask(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->UPLOADING:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "pushFileToTask"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 34
    .line 35
    iget v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadInterval:I

    .line 36
    .line 37
    invoke-direct {v0, p0, v2}, Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;-><init>(Lcom/haima/hmcp/cloud/BatchUploadTask;I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 41
    .line 42
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aput-object p1, v1, v3

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;->push(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private sendOrder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->isWebSocketActive(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "cloud-file: batch upload task:web-socket is not active: create socket"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

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
    const-string p1, "WebSocket is null when sendOrder called"

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

.method private uploadError(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

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
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;->onError(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->stopTask()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

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

.method public start(Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
    .locals 1
    .param p2    # Lcom/haima/hmcp/cloud/IUploadSummaryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IUploadSummaryListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mSummaryAdapter:Lcom/haima/hmcp/cloud/UploadSummaryAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/haima/hmcp/cloud/UploadSummaryAdapter;->setUploadSummaryListener(Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 20
    .line 21
    if-eq p2, v0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "BatchUpload currentStatus cannot support start"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0xb

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    new-instance p2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->INIT:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTotalFilesCount:I

    .line 67
    .line 68
    new-instance p1, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    :try_start_0
    const-string p2, "status"

    .line 74
    .line 75
    const-string v0, "upload_config"

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string p2, "file_segment_coefficient"

    .line 81
    .line 82
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string p2, "file_segment_size"

    .line 92
    .line 93
    iget v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->fileSegmentSize:I

    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p2

    .line 100
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_1
    const-string p2, "12607"

    .line 104
    .line 105
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentFileIndex:I

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->processNextFile()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    :goto_2
    sget-object p1, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    const-string p2, "BatchUpload file list is null or size = 0"

    .line 122
    .line 123
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/16 p1, 0xa

    .line 127
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->uploadError(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public stopTask()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mCurrentStatus:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "cloud-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "batch_upload task is stop"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mTask:Lcom/haima/hmcp/cloud/BatchUploadTask$Uploading;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/haima/hmcp/business/IWebSocket;->disconnect2Upload()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mUploadFiles:Ljava/util/List;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    :cond_3
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask;->mListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 77
    .line 78
    return-void
.end method
