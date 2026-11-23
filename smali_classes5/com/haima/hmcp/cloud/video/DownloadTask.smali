.class Lcom/haima/hmcp/cloud/video/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/IDownloadTask;
.implements Lcom/haima/hmcp/listeners/InnerDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;,
        Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;
    }
.end annotation


# static fields
.field private static final FILE_WRITE_BUFFER:I = 0x1800

.field public static final FILTER_TAG:Ljava/lang/String; = "download-file: "

.field public static final TAG:Ljava/lang/String; = "DownloadTask"

.field private static final TOKEN_START_KEEP_ALIVE_RETRY:Ljava/lang/String; = "token_start_keep_alive_retry"


# instance fields
.field private defaultDownloadFolder:Ljava/io/File;

.field private keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

.field private mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

.field private mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

.field private mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

.field private mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

.field private mCid:Ljava/lang/String;

.field private mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

.field private final mContext:Landroid/content/Context;

.field private mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field private mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

.field private mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

.field private mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

.field private mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

.field private final mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

.field private mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

.field private mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

.field private mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

.field private mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

.field private mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

.field private mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

.field private mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

.field private mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

.field private mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

.field private mTempDownloadPath:Ljava/lang/String;

.field private mTempMapFileName:Ljava/lang/String;

.field private mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

.field private mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

.field private mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

.field private mainHandler:Landroid/os/Handler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mainHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p1, Landroid/os/HandlerThread;

    .line 32
    .line 33
    const-string v0, "download-task-thread"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic A(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloadFail$70(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic A0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalQueryFiles$40()V

    return-void
.end method

.method public static synthetic B(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalContinueTask$46(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic B0(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalUpdateFiles$37(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic C(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkDiskStorage$32(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedSuccess$77(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic D(Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$startScanFileJob$63(Lcom/haima/hmcp/listeners/SearchCallback;)V

    return-void
.end method

.method public static synthetic D0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onQueryFail$86()V

    return-void
.end method

.method public static synthetic E(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onRunning$81()V

    return-void
.end method

.method public static synthetic E0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$execute$0()V

    return-void
.end method

.method public static synthetic F(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$29(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic F0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$execute$2()V

    return-void
.end method

.method public static synthetic G(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalTransferData$42(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    return-void
.end method

.method public static synthetic G0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalHangUp()V

    return-void
.end method

.method public static synthetic H(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$getTransferData$12(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    return-void
.end method

.method public static synthetic H0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onProgress$69(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V

    return-void
.end method

.method public static synthetic I(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$keepAliveTimeUp$10(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic I0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->createMapFile()V

    return-void
.end method

.method public static synthetic J(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$queryFiles$9(Lcom/haima/hmcp/listeners/QueryCallback;)V

    return-void
.end method

.method public static synthetic J0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleExceptionStata$64()V

    return-void
.end method

.method public static synthetic K(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkDiskStorage$34(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic K0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedFail$79(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic L(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$toRequestKeepAlive$56()V

    return-void
.end method

.method public static synthetic L0(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalCancel$18(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    return-void
.end method

.method public static synthetic M(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$startDownloadRetryJob$66(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic M0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownload$67(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic N(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelMoveFileJob()V

    return-void
.end method

.method public static synthetic N0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadJob()V

    return-void
.end method

.method public static synthetic O(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalCancel$19(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic O0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleKeepAliveResponse$59(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic P(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onQueryTimeOut$87()V

    return-void
.end method

.method public static synthetic P0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/enums/DownloadMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloadFinish$74(Lcom/haima/hmcp/enums/DownloadMode;)V

    return-void
.end method

.method public static synthetic Q(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalContinueTask()V

    return-void
.end method

.method public static synthetic Q0(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalCancel$15(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    return-void
.end method

.method public static synthetic R(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalContinueTask$45()V

    return-void
.end method

.method public static synthetic R0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$getWorkingFiles$7(Lcom/haima/hmcp/listeners/WorkingFileCallback;)V

    return-void
.end method

.method public static synthetic S(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$createMapFile$21()V

    return-void
.end method

.method public static synthetic S0(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWebSocketState$48(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic T(Lcom/haima/hmcp/cloud/video/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onQueryFail$85(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic U(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalQueryFiles$38()V

    return-void
.end method

.method public static synthetic V(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$execute$1()V

    return-void
.end method

.method public static synthetic W(Lcom/haima/hmcp/cloud/video/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloadFail$73(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic X(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onProgressFreeze$82(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic Y(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWebSocketState$49(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic Z(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$startKeepAlive$53(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onQuerySuccess$83(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleKeepAliveResponse$58(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/cloud/video/DownloadTask;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/haima/hmcp/cloud/video/DownloadTask;->handleKeepAliveResponse(JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelWsServerOpenTimerJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/cloud/video/DownloadTask;)Lcom/haima/hmcp/listeners/QueryCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelScanFileJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseAccessOpenObserver()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelAccessOpenTimerJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/haima/hmcp/cloud/video/DownloadTask;)Lcom/haima/hmcp/business/IWebSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseWsServerOpenObserver()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloaded$68(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic b0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedSuccess$78()V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$27(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkBreakPoint$31(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method private cancelAccessOpenTimerJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel access open timer job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private cancelDownloadJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel download job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private cancelDownloadRetryJob()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "download-file: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "cancel download retry job"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "12630"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->cancel()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 51
    .line 52
    return-void
.end method

.method private cancelDownloadingFile(Lcom/haima/hmcp/beans/CloudFile;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "download-file: prepare to cancel downloading file"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "download-file: downloading file="

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v5, "; cancel file="

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->cancel()V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    const-string v0, "download-file: cancel retry download file"

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "download-file: no downloading file to cancel"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 102
    :goto_0
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->stopKeepAlive()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 108
    .line 109
    .line 110
    :cond_3
    return v1
.end method

.method private cancelKeepAliveTimerJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel keep alive timer job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private cancelMoveFileJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel move file job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private cancelProgressChecker()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel progress check job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private cancelQueryTimerJob()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "cancel query timer"

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;->cancel()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private cancelScanFileJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private cancelTask(Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->stopKeepAlive()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseAccessOpenObserver()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelAccessOpenTimerJob()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadingFile(Lcom/haima/hmcp/beans/CloudFile;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    new-instance v1, Lcom/haima/hmcp/cloud/video/l0;

    .line 79
    .line 80
    invoke-direct {v1, p1, v0}, Lcom/haima/hmcp/cloud/video/l0;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    new-instance p1, Lcom/haima/hmcp/cloud/video/p;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/p;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p1
.end method

.method private cancelWsServerOpenTimerJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: cancel ws-server open timer job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private checkBreakPoint(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: check file break-point, file name: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

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
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    iput-wide v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadedSize:J

    .line 32
    .line 33
    :try_start_0
    iget-object v3, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-direct {p0, v4}, Lcom/haima/hmcp/cloud/video/DownloadTask;->getDownloadMaps(I)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    const-string v5, "download-file: check file break-point, the "

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " find in file-map, tmp name: "

    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v3, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    iget-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->defaultDownloadFolder:Ljava/io/File;

    .line 97
    .line 98
    new-instance v5, Lcom/haima/hmcp/cloud/video/DownloadTask$1;

    .line 99
    .line 100
    invoke-direct {v5, p0, v3}, Lcom/haima/hmcp/cloud/video/DownloadTask$1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    array-length v4, v3

    .line 110
    if-lez v4, :cond_1

    .line 111
    .line 112
    const-string v4, "download-file: find tmp file from sdcard"

    .line 113
    .line 114
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    aget-object v3, v3, v4

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    const-wide/16 v5, 0x1800

    .line 125
    .line 126
    cmp-long v7, v3, v5

    .line 127
    .line 128
    if-gtz v7, :cond_0

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    rem-long v1, v3, v5

    .line 132
    .line 133
    sub-long v1, v3, v1

    .line 134
    .line 135
    :goto_0
    iput-wide v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadedSize:J

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "download-file: the tmp file break point: "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-wide v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadedSize:J

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    const-string v1, "download-file: not find tmp file from sdcard"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v2, " not find in file-map"

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .line 192
    .line 193
    :cond_3
    :goto_1
    new-instance v0, Lcom/haima/hmcp/cloud/video/a1;

    .line 194
    .line 195
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/a1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v3, "download-file: check file break-point exception\uff1a "

    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v1, "12630"

    .line 230
    .line 231
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lcom/haima/hmcp/cloud/video/z0;

    .line 235
    .line 236
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/z0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method private checkContinueTask()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "download-file: "

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "no paused task"

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 41
    .line 42
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "no file to continue task"

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpCid:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, "not match cid to continue task"

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/haima/hmcp/cloud/video/a0;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/a0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_2
    new-instance v0, Lcom/haima/hmcp/cloud/video/b0;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/b0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    return v0
.end method

.method private checkDiskStorage(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadedSize:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const-wide/32 v6, 0x1400000

    .line 12
    .line 13
    .line 14
    cmp-long v8, v2, v4

    .line 15
    .line 16
    if-lez v8, :cond_0

    .line 17
    .line 18
    sub-long v2, v0, v2

    .line 19
    .line 20
    add-long/2addr v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v2, 0x2

    .line 23
    .line 24
    mul-long v2, v2, v0

    .line 25
    .line 26
    :goto_0
    add-long/2addr v2, v6

    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->getDiskAvailableStorage()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide/16 v6, -0x1

    .line 32
    .line 33
    const-string v8, "12630"

    .line 34
    .line 35
    const-string v9, "download-file: "

    .line 36
    .line 37
    cmp-long v10, v4, v6

    .line 38
    .line 39
    if-nez v10, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "external storage state error, state: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/haima/hmcp/cloud/video/r0;

    .line 86
    .line 87
    invoke-direct {v1, p0, p1, v0}, Lcom/haima/hmcp/cloud/video/r0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v7, "check external storage: block available total="

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, "; file size="

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "; download need storage="

    .line 116
    .line 117
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v8, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    cmp-long v0, v2, v4

    .line 151
    .line 152
    if-gez v0, :cond_2

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const/4 v0, 0x0

    .line 157
    :goto_1
    if-nez v0, :cond_3

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v2, "is not enough storage to download file: "

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Lcom/haima/hmcp/cloud/video/t0;

    .line 195
    .line 196
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/t0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_3
    new-instance v0, Lcom/haima/hmcp/cloud/video/u0;

    .line 204
    .line 205
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/u0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private checkStatus(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;->WORKING:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "download-file: download task is running..."

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onRunning(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "download-file: download task init"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->initTask(Ljava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    const-string p1, "download-file: task init fail"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 43
    .line 44
    const/16 v1, 0x3eb

    .line 45
    .line 46
    const-string v2, "IO exception"

    .line 47
    .line 48
    invoke-interface {p1, v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance p1, Lcom/haima/hmcp/cloud/video/d0;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/d0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/haima/hmcp/cloud/video/e0;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/e0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private checkWebSocketState(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: check web-socket state"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 9
    .line 10
    const-string v2, "download-file: "

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "WebSocketManager is null or is not connect"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/haima/hmcp/cloud/video/w1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/w1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object v3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 44
    .line 45
    invoke-interface {v1, v3}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "access is not connect and wait access`s open"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "12630"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/haima/hmcp/cloud/video/x1;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/x1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/haima/hmcp/cloud/video/y1;

    .line 85
    .line 86
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/y1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private checkWsServerSocketState(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: check ws-server socket state"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 9
    .line 10
    const-string v2, "download-file: "

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "WebSocketManager is null"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/haima/hmcp/cloud/video/q1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/q1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object v3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 44
    .line 45
    invoke-interface {v1, v3}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "ws-server is not connect and wait ws-server`s open"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "12630"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/haima/hmcp/cloud/video/r1;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/r1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/haima/hmcp/cloud/video/s1;

    .line 85
    .line 86
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/s1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private createAccessOpenObserver(Ljava/lang/Runnable;)Lcom/haima/hmcp/listeners/WebSocketObserver;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "create access link open observer"

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
    const-string v0, "12630"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTask$6;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask$6;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;-><init>(Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 41
    .line 42
    return-object v0
.end method

.method private createKeepAliveObserver()Lcom/haima/hmcp/listeners/WebSocketObserver;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;-><init>(Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 7
    .line 8
    return-object v0
.end method

.method private createMapFile()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getDownloadMapFile(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempMapFileName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "IO exception"

    .line 14
    .line 15
    const/16 v2, 0x3eb

    .line 16
    .line 17
    const-string v3, "12630"

    .line 18
    .line 19
    const-string v4, "download-file: "

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "download map file name is null"

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v0, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 53
    .line 54
    invoke-interface {v0, v3, v2, v1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempMapFileName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const/4 v0, 0x0

    .line 76
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 77
    .line 78
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, "download map file create fail"

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v0, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 108
    .line 109
    invoke-interface {v0, v3, v2, v1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void

    .line 113
    :cond_4
    new-instance v0, Lcom/haima/hmcp/cloud/video/m2;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/m2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private createQueryObserver()Lcom/haima/hmcp/listeners/WebSocketObserver;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;-><init>(Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 7
    .line 8
    return-object v0
.end method

.method private createWsServerOpenObserver(Ljava/lang/Runnable;)Lcom/haima/hmcp/listeners/WebSocketObserver;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "create ws-server open observer"

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
    const-string v0, "12630"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTask$8;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask$8;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;-><init>(Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 41
    .line 42
    return-object v0
.end method

.method public static synthetic d(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$cancelTask$14(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelProgressChecker()V

    return-void
.end method

.method private deleteDownloadMap(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    sget-object v4, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "download-file: delete map data: "

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v6, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v5}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getDownloadMapFile(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "download-file: "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "delete download map data fail, cause: tmp map file name is null"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "12630"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/16 v2, 0x3eb

    .line 73
    .line 74
    const-string v3, "IO error"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2, v3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 86
    .line 87
    new-instance v8, Ljava/io/InputStreamReader;

    .line 88
    .line 89
    new-instance v9, Ljava/io/FileInputStream;

    .line 90
    .line 91
    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-eqz v8, :cond_1

    .line 105
    .line 106
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    :goto_1
    const/4 v11, -0x1

    .line 121
    if-ge v10, v8, :cond_5

    .line 122
    .line 123
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Ljava/lang/String;

    .line 128
    .line 129
    new-instance v13, Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v12, "data"

    .line 135
    .line 136
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    new-instance v13, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v12, "name"

    .line 146
    .line 147
    invoke-virtual {v13, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    const-string v14, "cloudPath"

    .line 152
    .line 153
    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    const-string v15, "size"

    .line 158
    .line 159
    invoke-virtual {v13, v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    const-string v6, "duration"

    .line 164
    .line 165
    move/from16 v16, v10

    .line 166
    .line 167
    const-wide/16 v9, 0x0

    .line 168
    .line 169
    invoke-virtual {v13, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    const-string v6, "type"

    .line 174
    .line 175
    invoke-virtual {v13, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v13

    .line 198
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 199
    .line 200
    .line 201
    move-result-wide v17

    .line 202
    const/4 v15, 0x1

    .line 203
    cmp-long v19, v13, v17

    .line 204
    .line 205
    if-nez v19, :cond_2

    .line 206
    .line 207
    const/4 v13, 0x1

    .line 208
    goto :goto_2

    .line 209
    :cond_2
    const/4 v13, 0x0

    .line 210
    :goto_2
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getVideoDuration()D

    .line 211
    .line 212
    .line 213
    move-result-wide v17

    .line 214
    cmpl-double v14, v9, v17

    .line 215
    .line 216
    if-nez v14, :cond_3

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_3
    const/4 v15, 0x0

    .line 220
    :goto_3
    if-eqz v6, :cond_4

    .line 221
    .line 222
    if-eqz v12, :cond_4

    .line 223
    .line 224
    if-eqz v13, :cond_4

    .line 225
    .line 226
    if-eqz v15, :cond_4

    .line 227
    .line 228
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v6, "download-file: match delete mapping file, index: "

    .line 236
    .line 237
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move/from16 v9, v16

    .line 241
    .line 242
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    move v10, v9

    .line 253
    goto :goto_4

    .line 254
    :cond_4
    move/from16 v9, v16

    .line 255
    .line 256
    add-int/lit8 v10, v9, 0x1

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_5
    const/4 v10, -0x1

    .line 261
    :goto_4
    if-le v10, v11, :cond_6

    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-ge v10, v0, :cond_6

    .line 268
    .line 269
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v6, "download-file: match mapping file and delete, index: "

    .line 277
    .line 278
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_6
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 296
    .line 297
    const-string v3, "download-file: no mapping file to delete"

    .line 298
    .line 299
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 303
    .line 304
    .line 305
    :goto_5
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 306
    .line 307
    .line 308
    goto :goto_a

    .line 309
    :catch_0
    move-exception v0

    .line 310
    goto :goto_6

    .line 311
    :catch_1
    move-exception v0

    .line 312
    goto :goto_7

    .line 313
    :catch_2
    move-exception v0

    .line 314
    goto :goto_8

    .line 315
    :catch_3
    move-exception v0

    .line 316
    goto :goto_9

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    move-object v2, v0

    .line 319
    const/4 v6, 0x0

    .line 320
    goto/16 :goto_12

    .line 321
    .line 322
    :catch_4
    move-exception v0

    .line 323
    const/4 v7, 0x0

    .line 324
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 325
    .line 326
    .line 327
    if-eqz v7, :cond_7

    .line 328
    .line 329
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 330
    .line 331
    .line 332
    goto :goto_a

    .line 333
    :catch_5
    move-exception v0

    .line 334
    const/4 v7, 0x0

    .line 335
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 336
    .line 337
    .line 338
    if-eqz v7, :cond_7

    .line 339
    .line 340
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :catch_6
    move-exception v0

    .line 345
    const/4 v7, 0x0

    .line 346
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 347
    .line 348
    .line 349
    if-eqz v7, :cond_7

    .line 350
    .line 351
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 352
    .line 353
    .line 354
    goto :goto_a

    .line 355
    :catch_7
    move-exception v0

    .line 356
    const/4 v7, 0x0

    .line 357
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 358
    .line 359
    .line 360
    if-eqz v7, :cond_7

    .line 361
    .line 362
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 363
    .line 364
    .line 365
    goto :goto_a

    .line 366
    :catch_8
    move-exception v0

    .line 367
    move-object v3, v0

    .line 368
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    .line 370
    .line 371
    :cond_7
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_8

    .line 376
    .line 377
    return-void

    .line 378
    :cond_8
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    .line 379
    .line 380
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 381
    .line 382
    new-instance v6, Ljava/io/FileOutputStream;

    .line 383
    .line 384
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-direct {v0, v6, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 391
    .line 392
    .line 393
    :try_start_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_9

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    check-cast v2, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 417
    .line 418
    .line 419
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    .line 420
    .line 421
    .line 422
    goto :goto_f

    .line 423
    :catchall_1
    move-exception v0

    .line 424
    move-object v2, v0

    .line 425
    move-object v6, v3

    .line 426
    goto :goto_10

    .line 427
    :catch_9
    move-exception v0

    .line 428
    move-object v6, v3

    .line 429
    goto :goto_c

    .line 430
    :catch_a
    move-exception v0

    .line 431
    move-object v6, v3

    .line 432
    goto :goto_d

    .line 433
    :catch_b
    move-exception v0

    .line 434
    move-object v6, v3

    .line 435
    goto :goto_e

    .line 436
    :catchall_2
    move-exception v0

    .line 437
    move-object v2, v0

    .line 438
    const/4 v6, 0x0

    .line 439
    goto :goto_10

    .line 440
    :catch_c
    move-exception v0

    .line 441
    const/4 v6, 0x0

    .line 442
    :goto_c
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 443
    .line 444
    .line 445
    if-eqz v6, :cond_a

    .line 446
    .line 447
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 448
    .line 449
    .line 450
    goto :goto_f

    .line 451
    :catch_d
    move-exception v0

    .line 452
    const/4 v6, 0x0

    .line 453
    :goto_d
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 454
    .line 455
    .line 456
    if-eqz v6, :cond_a

    .line 457
    .line 458
    :try_start_11
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 459
    .line 460
    .line 461
    goto :goto_f

    .line 462
    :catch_e
    move-exception v0

    .line 463
    const/4 v6, 0x0

    .line 464
    :goto_e
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 465
    .line 466
    .line 467
    if-eqz v6, :cond_a

    .line 468
    .line 469
    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 470
    .line 471
    .line 472
    goto :goto_f

    .line 473
    :catch_f
    move-exception v0

    .line 474
    move-object v2, v0

    .line 475
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    .line 477
    .line 478
    :cond_a
    :goto_f
    return-void

    .line 479
    :catchall_3
    move-exception v0

    .line 480
    move-object v2, v0

    .line 481
    :goto_10
    if-eqz v6, :cond_b

    .line 482
    .line 483
    :try_start_14
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    .line 484
    .line 485
    .line 486
    goto :goto_11

    .line 487
    :catch_10
    move-exception v0

    .line 488
    move-object v3, v0

    .line 489
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .line 491
    .line 492
    :cond_b
    :goto_11
    throw v2

    .line 493
    :catchall_4
    move-exception v0

    .line 494
    move-object v2, v0

    .line 495
    move-object v6, v7

    .line 496
    :goto_12
    if-eqz v6, :cond_c

    .line 497
    .line 498
    :try_start_15
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    .line 499
    .line 500
    .line 501
    goto :goto_13

    .line 502
    :catch_11
    move-exception v0

    .line 503
    move-object v3, v0

    .line 504
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 505
    .line 506
    .line 507
    :cond_c
    :goto_13
    throw v2
.end method

.method private deleteTmpFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getTempFileNameWithPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "delete tmp file: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "download-file: "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->deleteDownloadMap(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, "no tmp file to delete"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method

.method private dispatchMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "download-file: dispatchMainThread fail, cause: runnable is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "download-file: dispatchMainThread fail, cause: mainHandler is null"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic e(Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalUpdateFiles$36(Lcom/haima/hmcp/listeners/UpdateCallback;)V

    return-void
.end method

.method public static synthetic e0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleKeepAliveResponse$57()V

    return-void
.end method

.method public static synthetic f(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkStatus$13()V

    return-void
.end method

.method public static synthetic f0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$null$39()V

    return-void
.end method

.method public static synthetic g(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$insertDownloadMap$41(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic g0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleStartKeepAliveOperationMessage$60(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method private getDiskAvailableStorage()J
    .locals 7

    .line 1
    const-string v0, "12630"

    .line 2
    .line 3
    const-string v1, "download-file: "

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    return-wide v2

    .line 21
    :cond_0
    new-instance v6, Landroid/os/StatFs;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "mounted"

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-long v4, v4

    .line 43
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-long v0, v0

    .line 48
    mul-long v4, v4, v0

    .line 49
    .line 50
    move-wide v2, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v4, "external storage state is not MEDIA_MOUNTED"

    .line 53
    .line 54
    sget-object v5, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v4

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "get external storage exception: "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    sget-object v5, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v5, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-wide v2
.end method

.method private getDownloadMaps(I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getDownloadMapFile(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "download-file: "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "get download maps fail, cause: tmp map file name is null"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "12630"

    .line 45
    .line 46
    invoke-static {p1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 57
    .line 58
    new-instance v6, Ljava/io/InputStreamReader;

    .line 59
    .line 60
    new-instance v7, Ljava/io/FileInputStream;

    .line 61
    .line 62
    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v2, "UTF-8"

    .line 66
    .line 67
    invoke-direct {v6, v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    .line 72
    .line 73
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    move-object v4, v5

    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :catch_0
    move-exception v2

    .line 92
    move-object v4, v5

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception v2

    .line 95
    move-object v4, v5

    .line 96
    goto :goto_2

    .line 97
    :catch_2
    move-exception v2

    .line 98
    move-object v4, v5

    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :catch_3
    move-exception v2

    .line 104
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_4
    move-exception v2

    .line 114
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    .line 116
    .line 117
    if-eqz v4, :cond_2

    .line 118
    .line 119
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_5
    move-exception v2

    .line 124
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 125
    .line 126
    .line 127
    if-eqz v4, :cond_2

    .line 128
    .line 129
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catch_6
    move-exception v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_4

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_4
    :try_start_9
    new-instance v5, Lorg/json/JSONObject;

    .line 168
    .line 169
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 173
    .line 174
    invoke-direct {v4}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v6, "tmp_file_name"

    .line 178
    .line 179
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iput-object v6, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    sget-object v7, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_TEMP_FILE_PATH:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v7, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    iput-object v6, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempPath:Ljava/lang/String;

    .line 205
    .line 206
    new-instance v6, Lcom/haima/hmcp/beans/CloudFile;

    .line 207
    .line 208
    invoke-direct {v6}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v7, "data"

    .line 212
    .line 213
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_5

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_5
    new-instance v7, Lorg/json/JSONObject;

    .line 225
    .line 226
    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v5, "name"

    .line 230
    .line 231
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v5, "path"

    .line 239
    .line 240
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v5, "cloudPath"

    .line 248
    .line 249
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v5, "size"

    .line 257
    .line 258
    const-wide/16 v8, 0x0

    .line 259
    .line 260
    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 261
    .line 262
    .line 263
    move-result-wide v8

    .line 264
    invoke-virtual {v6, v8, v9}, Lcom/haima/hmcp/beans/CloudFile;->setSize(J)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 265
    .line 266
    .line 267
    :try_start_a
    const-string v5, "duration"

    .line 268
    .line 269
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 274
    .line 275
    .line 276
    move-result-wide v8

    .line 277
    invoke-virtual {v6, v8, v9}, Lcom/haima/hmcp/beans/CloudFile;->setVideoDuration(D)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 278
    .line 279
    .line 280
    :catch_7
    :try_start_b
    const-string v5, "type"

    .line 281
    .line 282
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/beans/CloudFile;->setFileType(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iput-object v6, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 290
    .line 291
    const/4 v5, 0x1

    .line 292
    if-ne p1, v5, :cond_6

    .line 293
    .line 294
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :cond_6
    iget-object v5, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 306
    .line 307
    .line 308
    goto/16 :goto_5

    .line 309
    .line 310
    :catch_8
    move-exception v4

    .line 311
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_5

    .line 315
    .line 316
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 317
    .line 318
    .line 319
    return-object v1

    .line 320
    :goto_6
    if-eqz v4, :cond_8

    .line 321
    .line 322
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :catch_9
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    :cond_8
    :goto_7
    throw p1
.end method

.method public static synthetic h(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$null$65(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic h0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWsServerSocketState$50()V

    return-void
.end method

.method private handleExceptionStata(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/k0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/k0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseTask()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "download-file: download task is exception stata: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "12630"

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private handleKeepAliveResponse(JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 2

    .line 1
    iget-object p7, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 2
    .line 3
    const-string v0, "download-file: a invalid keep alive response"

    .line 4
    .line 5
    if-nez p7, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p5, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 14
    .line 15
    invoke-virtual {p7, p1, p2, v1}, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->checkResponseValidity(JLcom/haima/hmcp/beans/CloudFile;)Z

    .line 16
    .line 17
    .line 18
    move-result p7

    .line 19
    if-nez p7, :cond_1

    .line 20
    .line 21
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p7, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "response: "

    .line 33
    .line 34
    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p7

    .line 44
    const-string v0, "12634"

    .line 45
    .line 46
    invoke-static {v0, p7}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    sget-object p3, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance p4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p5, "download-file: request download keep alive success, request time-stamp: "

    .line 59
    .line 60
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-virtual {p6}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;->getInterval()J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    const-wide/16 v0, -0x1

    .line 79
    .line 80
    cmp-long p3, p1, v0

    .line 81
    .line 82
    if-eqz p3, :cond_3

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string p7, "request keep alive fail and retry; cause: "

    .line 90
    .line 91
    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p4, "; retry interval: "

    .line 98
    .line 99
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p4, " ms"

    .line 106
    .line 107
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    sget-object p4, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 115
    .line 116
    new-instance p7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v0, "download-file: "

    .line 122
    .line 123
    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-static {p4, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p3, Lcom/haima/hmcp/cloud/video/f0;

    .line 137
    .line 138
    invoke-direct {p3, p0}, Lcom/haima/hmcp/cloud/video/f0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    new-instance p3, Lcom/haima/hmcp/cloud/video/g0;

    .line 145
    .line 146
    invoke-direct {p3, p0, p5, p6}, Lcom/haima/hmcp/cloud/video/g0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V

    .line 147
    .line 148
    .line 149
    const-string p4, "token_start_keep_alive_retry"

    .line 150
    .line 151
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;JLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    const-string p2, "download-file: request download keep alive retry over limit"

    .line 158
    .line 159
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseKeepAliveObserver()V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/haima/hmcp/cloud/video/i0;

    .line 169
    .line 170
    invoke-direct {p1, p0, p5}, Lcom/haima/hmcp/cloud/video/i0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void
.end method

.method private handleStartKeepAliveOperationMessage(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: get file from keep alive timer job"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->getInnerCloudFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->getStrategy()Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    move-object v1, v0

    .line 30
    :goto_0
    const-string v2, "download-file: "

    .line 31
    .line 32
    const-string v3, "12630"

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;->isValid()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "wait strategy invalid when op 41 is false"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/haima/hmcp/cloud/video/t1;

    .line 73
    .line 74
    invoke-direct {p1, p0, v0}, Lcom/haima/hmcp/cloud/video/t1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    new-instance p1, Lcom/haima/hmcp/cloud/video/u1;

    .line 82
    .line 83
    invoke-direct {p1, p0, v0, v1}, Lcom/haima/hmcp/cloud/video/u1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    new-instance p1, Lcom/haima/hmcp/cloud/video/v1;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/haima/hmcp/cloud/video/v1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 100
    .line 101
    const-string p1, "file is null when start keep alive response"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const-string p1, "strategy is null when start keep alive response"

    .line 105
    .line 106
    :goto_2
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->stopKeepAlive()V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/haima/hmcp/cloud/video/p;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/p;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public static synthetic i(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalCancel$16(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic i0(Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalUpdateFiles$35(Lcom/haima/hmcp/listeners/UpdateCallback;)V

    return-void
.end method

.method private initFiles(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/haima/hmcp/beans/CloudFile;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 35
    .line 36
    invoke-direct {v1, v3}, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadRetryStrategy:Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 40
    .line 41
    iget-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->isSaveToGallery:Z

    .line 55
    .line 56
    iget-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 57
    .line 58
    sget-object v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_DEFAULT_PATH:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    iget-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v3, "/"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    iget-object v3, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempPath:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    return-object v0
.end method

.method private initTask(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_DEFAULT_PATH:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "12630"

    .line 9
    .line 10
    const-string v3, "download-file: "

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, "DOWNLOAD_DEFAULT_PATH folder is null"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_TEMP_FILE_PATH:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "create cid folder error: "

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    const-string v0, "cid is null"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "folder is null"

    .line 89
    .line 90
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->defaultDownloadFolder:Ljava/io/File;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->defaultDownloadFolder:Ljava/io/File;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->initFiles(Ljava/util/List;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    .line 154
    .line 155
    const/4 p1, 0x1

    .line 156
    return p1
.end method

.method private insertDownloadMap(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: insert map data: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mTempDownloadPath:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getDownloadMapFile(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "12630"

    .line 36
    .line 37
    const-string v4, "download-file: "

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "insert download map data fail, cause: tmp map file name is null"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x3eb

    .line 65
    .line 66
    const-string v1, "IO error"

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 74
    .line 75
    new-instance v5, Lorg/json/JSONObject;

    .line 76
    .line 77
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "name"

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v6, "path"

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v6, "cloudPath"

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v6, "size"

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v6, "duration"

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getVideoDuration()D

    .line 119
    .line 120
    .line 121
    move-result-wide v7

    .line 122
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string v6, "type"

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getFileType()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    new-instance v2, Lorg/json/JSONObject;

    .line 135
    .line 136
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v6, "tmp_file_name"

    .line 140
    .line 141
    iget-object v7, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    const-string v6, "tmp_file_map_name"

    .line 147
    .line 148
    iget-object v7, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 149
    .line 150
    invoke-virtual {v7}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v6, "data"

    .line 158
    .line 159
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const-string v5, ""

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    goto :goto_0

    .line 178
    :catch_1
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :goto_0
    move-object v2, v0

    .line 187
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_1

    .line 192
    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v0, "make map data error when insert download map data, cause "

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance p1, Lcom/haima/hmcp/cloud/video/p;

    .line 234
    .line 235
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/p;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    .line 243
    .line 244
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 245
    .line 246
    new-instance v5, Ljava/io/FileOutputStream;

    .line 247
    .line 248
    const/4 v6, 0x1

    .line 249
    invoke-direct {v5, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    const-string v1, "UTF-8"

    .line 253
    .line 254
    invoke-direct {v4, v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .line 259
    .line 260
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    .line 265
    .line 266
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :catch_2
    move-exception v0

    .line 271
    goto :goto_2

    .line 272
    :catch_3
    move-exception v0

    .line 273
    goto :goto_3

    .line 274
    :catch_4
    move-exception v0

    .line 275
    goto :goto_4

    .line 276
    :catchall_0
    move-exception p1

    .line 277
    goto :goto_6

    .line 278
    :catch_5
    move-exception v1

    .line 279
    move-object v3, v0

    .line 280
    move-object v0, v1

    .line 281
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    .line 283
    .line 284
    if-eqz v3, :cond_2

    .line 285
    .line 286
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :catch_6
    move-exception v1

    .line 291
    move-object v3, v0

    .line 292
    move-object v0, v1

    .line 293
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 294
    .line 295
    .line 296
    if-eqz v3, :cond_2

    .line 297
    .line 298
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :catch_7
    move-exception v1

    .line 303
    move-object v3, v0

    .line 304
    move-object v0, v1

    .line 305
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 306
    .line 307
    .line 308
    if-eqz v3, :cond_2

    .line 309
    .line 310
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :catch_8
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    .line 317
    .line 318
    :cond_2
    :goto_5
    new-instance v0, Lcom/haima/hmcp/cloud/video/q2;

    .line 319
    .line 320
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/q2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 321
    .line 322
    .line 323
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :catchall_1
    move-exception p1

    .line 328
    move-object v0, v3

    .line 329
    :goto_6
    if-eqz v0, :cond_3

    .line 330
    .line 331
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 332
    .line 333
    .line 334
    goto :goto_7

    .line 335
    :catch_9
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 337
    .line 338
    .line 339
    :cond_3
    :goto_7
    throw p1
.end method

.method private internalCancel(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/cloud/video/j;

    .line 12
    .line 13
    invoke-direct {v0, p2, p1}, Lcom/haima/hmcp/cloud/video/j;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, -0x1

    .line 36
    if-nez v1, :cond_8

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    if-ge v6, v5, :cond_4

    .line 49
    .line 50
    iget-object v7, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 57
    .line 58
    iget-object v8, v7, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_2

    .line 81
    .line 82
    iget-object v7, v7, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v7, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 102
    :goto_2
    if-eqz v8, :cond_3

    .line 103
    .line 104
    if-nez v7, :cond_5

    .line 105
    .line 106
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    const/4 v6, -0x1

    .line 110
    :cond_5
    if-le v6, v4, :cond_7

    .line 111
    .line 112
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-ge v6, v5, :cond_6

    .line 119
    .line 120
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    const/4 v6, -0x1

    .line 127
    :cond_7
    :goto_3
    monitor-exit v1

    .line 128
    goto :goto_4

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p1

    .line 132
    :cond_8
    const/4 v6, -0x1

    .line 133
    :goto_4
    if-eq v6, v4, :cond_9

    .line 134
    .line 135
    new-instance p1, Lcom/haima/hmcp/cloud/video/k;

    .line 136
    .line 137
    invoke-direct {p1, p2, v0}, Lcom/haima/hmcp/cloud/video/k;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadingFile(Lcom/haima/hmcp/beans/CloudFile;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_e

    .line 149
    .line 150
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 151
    .line 152
    if-nez v1, :cond_a

    .line 153
    .line 154
    new-instance v0, Lcom/haima/hmcp/cloud/video/m;

    .line 155
    .line 156
    invoke-direct {v0, p2, p1}, Lcom/haima/hmcp/cloud/video/m;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_a
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_c

    .line 186
    .line 187
    iget-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 188
    .line 189
    iget-object v4, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_b

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_b
    const/4 v2, 0x0

    .line 207
    :cond_c
    :goto_5
    if-eqz v1, :cond_d

    .line 208
    .line 209
    if-nez v2, :cond_e

    .line 210
    .line 211
    :cond_d
    new-instance v0, Lcom/haima/hmcp/cloud/video/n;

    .line 212
    .line 213
    invoke-direct {v0, p2, p1}, Lcom/haima/hmcp/cloud/video/n;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_e
    new-instance p1, Lcom/haima/hmcp/cloud/video/o;

    .line 221
    .line 222
    invoke-direct {p1, p2, v0}, Lcom/haima/hmcp/cloud/video/o;-><init>(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 229
    .line 230
    if-eqz p1, :cond_10

    .line 231
    .line 232
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 233
    .line 234
    if-eqz p1, :cond_10

    .line 235
    .line 236
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_f

    .line 243
    .line 244
    return-void

    .line 245
    :cond_f
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseAccessOpenObserver()V

    .line 246
    .line 247
    .line 248
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelAccessOpenTimerJob()V

    .line 249
    .line 250
    .line 251
    :cond_10
    const-string p1, "token_start_keep_alive_retry"

    .line 252
    .line 253
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->removeMessage(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Lcom/haima/hmcp/cloud/video/p;

    .line 257
    .line 258
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/p;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method private internalContinueTask()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 2
    .line 3
    const-string v1, "download-file: "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "no paused task"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 40
    .line 41
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "no file to continue task"

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpCid:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "not match cid to continue task"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/haima/hmcp/cloud/video/n1;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/n1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "check hang up files: "

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 118
    .line 119
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/haima/hmcp/beans/CloudFile;

    .line 136
    .line 137
    const-string v5, "["

    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 143
    .line 144
    .line 145
    const-string v4, "], "

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    sget-object v3, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v1, "12630"

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 190
    .line 191
    new-instance v1, Lcom/haima/hmcp/cloud/video/p1;

    .line 192
    .line 193
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/cloud/video/p1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/ArrayList;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method private internalHangUp()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalPauseTask()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/haima/hmcp/cloud/video/bean/HangUpData;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v1, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpCid:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v1, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuffer;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "hang up files: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/haima/hmcp/beans/CloudFile;

    .line 48
    .line 49
    const-string v3, "["

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    const-string v2, "], "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "download-file: "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "12630"

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private internalPauseTask()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->stopKeepAlive()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelAccessOpenTimerJob()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v3, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    iget-object v2, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v2, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 79
    .line 80
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadingFile(Lcom/haima/hmcp/beans/CloudFile;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_4

    .line 95
    .line 96
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    iget-object v2, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 117
    .line 118
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 124
    .line 125
    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_5

    .line 153
    .line 154
    iget-object v4, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 155
    .line 156
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    .line 164
    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_7

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Lcom/haima/hmcp/beans/CloudFile;

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;->IDLE:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 191
    .line 192
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 193
    .line 194
    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    throw v0
.end method

.method private internalQueryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "cloud-file: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "query cloud file error: WebSocketManager is null"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "fail; "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "12647"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/16 v0, 0x3e9

    .line 56
    .line 57
    const-string v1, "web-socket is not init"

    .line 58
    .line 59
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/listeners/QueryCallback;->onQueryFail(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 64
    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/haima/hmcp/cloud/video/j1;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/j1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    const/4 p1, 0x0

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 92
    .line 93
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_1
    const-string v1, "type"

    .line 97
    .line 98
    const-string v2, "download_file"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    const-string v1, "event"

    .line 104
    .line 105
    const-string v2, "download_file_list"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    move-object v3, v0

    .line 119
    move-object v0, p1

    .line 120
    move-object p1, v3

    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception v1

    .line 123
    move-object v0, p1

    .line 124
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    if-nez v0, :cond_4

    .line 128
    .line 129
    :goto_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "download-file: query cloud file order: "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startQueryTimerJob()V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 155
    .line 156
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 157
    .line 158
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->createQueryObserver()Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 166
    .line 167
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catchall_1
    move-exception p1

    .line 172
    :goto_2
    if-nez v0, :cond_5

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    :goto_3
    throw p1

    .line 179
    :cond_6
    :goto_4
    new-instance p1, Lcom/haima/hmcp/cloud/video/i1;

    .line 180
    .line 181
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/i1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method private internalTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 2
    .line 3
    const-string v1, "download-file: "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "not data to transfer"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/haima/hmcp/cloud/video/k1;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/haima/hmcp/cloud/video/k1;-><init>(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;->cid:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;->files:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->getMode()Lcom/haima/hmcp/enums/DownloadMode;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;->downloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 74
    .line 75
    new-instance v1, Lcom/haima/hmcp/cloud/video/m1;

    .line 76
    .line 77
    invoke-direct {v1, p1, v0}, Lcom/haima/hmcp/cloud/video/m1;-><init>(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "no file to transfer"

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
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/haima/hmcp/cloud/video/l1;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lcom/haima/hmcp/cloud/video/l1;-><init>(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private internalUpdateFiles(Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/UpdateCallback;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance p1, Lcom/haima/hmcp/cloud/video/o2;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/haima/hmcp/cloud/video/o2;-><init>(Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 47
    .line 48
    :goto_0
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v1, ""

    .line 79
    .line 80
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_a

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/haima/hmcp/beans/CloudFile;

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_9

    .line 129
    .line 130
    iget-object v4, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    sget-object v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_DEFAULT_PATH:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v6, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 149
    .line 150
    invoke-virtual {v6, v4}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    sget-object v5, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_DEFAULT_PATH:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v6, "downloading path="

    .line 170
    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v6, ", update path="

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    sget-object v6, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v8, "download-file: "

    .line 197
    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v6, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_8

    .line 216
    .line 217
    const-string v3, "/"

    .line 218
    .line 219
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_7

    .line 224
    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    :cond_7
    iget-object v3, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 243
    .line 244
    invoke-virtual {v3, v5}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v3, "download-file: update downloading file path"

    .line 248
    .line 249
    invoke-static {v6, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_8
    const-string v3, "/"

    .line 255
    .line 256
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_4

    .line 261
    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iget-object v4, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 280
    .line 281
    invoke-virtual {v4, v3}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v3, "download-file: reset downloading file path"

    .line 285
    .line 286
    invoke-static {v6, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :cond_a
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 297
    .line 298
    monitor-enter p1

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->initFiles(Ljava/util/List;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    .line 312
    .line 313
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v0, :cond_b

    .line 315
    .line 316
    const/4 p1, 0x0

    .line 317
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 318
    .line 319
    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_b
    new-instance p1, Lcom/haima/hmcp/cloud/video/p2;

    .line 323
    .line 324
    invoke-direct {p1, p2, v2}, Lcom/haima/hmcp/cloud/video/p2;-><init>(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V

    .line 325
    .line 326
    .line 327
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :catchall_0
    move-exception p2

    .line 332
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    throw p2

    .line 334
    :cond_c
    :goto_3
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 335
    .line 336
    const-string v0, "download-file:  update files callback is null"

    .line 337
    .line 338
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    new-instance p1, Lcom/haima/hmcp/cloud/video/n2;

    .line 342
    .line 343
    invoke-direct {p1, p2}, Lcom/haima/hmcp/cloud/video/n2;-><init>(Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 344
    .line 345
    .line 346
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method private internalWorkingFiles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "get downloading file"

    .line 17
    .line 18
    sget-object v2, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "download-file: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    monitor-exit v1

    .line 89
    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw v0
.end method

.method private isSameFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v1, p2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/CloudFile;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic j(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$scheduleTask$22(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic j0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$26(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalTransferData$44(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    return-void
.end method

.method public static synthetic k0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$cancelDownload$5(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V

    return-void
.end method

.method public static synthetic l(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$execute$3()V

    return-void
.end method

.method public static synthetic l0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->scheduleTask()V

    return-void
.end method

.method private synthetic lambda$cancelDownload$4(Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelTask(Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$cancelDownload$5(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalCancel(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$cancelTask$14(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCanceled(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$checkBreakPoint$30(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3eb

    .line 2
    .line 3
    const-string v1, "IO error"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$checkBreakPoint$31(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkDiskStorage(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$checkContinueTask$11()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 3
    .line 4
    const/16 v0, 0x3ea

    .line 5
    .line 6
    const-string v1, "cid not match for task"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$checkDiskStorage$32(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3eb

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$checkDiskStorage$33()V
    .locals 2

    .line 1
    const/16 v0, 0x3ed

    .line 2
    .line 3
    const-string v1, "Not enough external storage"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$checkDiskStorage$34(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$checkStatus$13()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onStart(Lcom/haima/hmcp/enums/DownloadMode;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$checkWebSocketState$47()V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    const-string v1, "web-socket is not ready"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$checkWebSocketState$48(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseAccessOpenObserver()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->createAccessOpenObserver(Ljava/lang/Runnable;)Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$checkWebSocketState$49(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelAccessOpenTimerJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startAccessOpenTimerJob(Ljava/lang/Runnable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$checkWsServerSocketState$50()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3ec

    .line 6
    .line 7
    const-string v2, "web-socket is not init"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/listeners/QueryCallback;->onQueryFail(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$checkWsServerSocketState$51(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseWsServerOpenObserver()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->createWsServerOpenObserver(Ljava/lang/Runnable;)Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$checkWsServerSocketState$52(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelWsServerOpenTimerJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startWsServerOpenTimerJob(Ljava/lang/Runnable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$createMapFile$21()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/a;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkWebSocketState(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$execute$0()V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    const-string v1, "Not in service"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$execute$1()V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    const-string v1, "Not in service"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$execute$2()V
    .locals 2

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    const-string v1, "cid is null"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$execute$3()V
    .locals 2

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    const-string v1, "download url is null"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$getTransferData$12(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$getWorkingFiles$7(Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalWorkingFiles()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/haima/hmcp/cloud/video/r2;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lcom/haima/hmcp/cloud/video/r2;-><init>(Lcom/haima/hmcp/listeners/WorkingFileCallback;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$handleExceptionStata$64()V
    .locals 2

    .line 1
    const/16 v0, 0x3ee

    .line 2
    .line 3
    const-string v1, "Download task error"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$handleKeepAliveResponse$57()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseKeepAliveObserver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$handleKeepAliveResponse$58(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$handleKeepAliveResponse$59(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3ec

    .line 2
    .line 3
    const-string v1, "Network request timeout"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$handleStartKeepAliveOperationMessage$60(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3ec

    .line 2
    .line 3
    const-string v1, "Network error"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$handleStartKeepAliveOperationMessage$61(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$handleStartKeepAliveOperationMessage$62(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->insertDownloadMap(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$insertDownloadMap$41(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startDownloadJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$internalCancel$15(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3ea

    .line 4
    .line 5
    const-string v1, "The file name is null"

    .line 6
    .line 7
    invoke-interface {p0, p1, v0, v1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalCancel$16(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCanceled(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalCancel$17(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3ee

    .line 4
    .line 5
    const-string v1, "The file is not exist"

    .line 6
    .line 7
    invoke-interface {p0, p1, v0, v1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalCancel$18(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3ee

    .line 4
    .line 5
    const-string v1, "The file is not exist"

    .line 6
    .line 7
    invoke-interface {p0, p1, v0, v1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalCancel$19(Lcom/haima/hmcp/listeners/CancelCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCanceled(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$internalContinueTask$45()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 3
    .line 4
    const/16 v0, 0x3ea

    .line 5
    .line 6
    const-string v1, "cid not match for task"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$internalContinueTask$46(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkStatus(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$internalQueryFiles$38()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3e9

    .line 6
    .line 7
    const-string v2, "wait for query result"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/listeners/QueryCallback;->onQueryFail(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$internalQueryFiles$40()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/o1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/o1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkWsServerSocketState(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$internalTransferData$42(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;->onData(Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalTransferData$43(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;->onData(Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalTransferData$44(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;->onData(Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalUpdateFiles$35(Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3ea

    .line 4
    .line 5
    const-string v1, "The file list is null or size is 0"

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdateFail(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalUpdateFiles$36(Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    const-string v1, "The download task is not running"

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdateFail(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$internalUpdateFiles$37(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdated(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$keepAliveTimeUp$10(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3ee

    .line 2
    .line 3
    const-string v1, "Download time is use up"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$null$20()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->scheduleTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$null$39()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalQueryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$null$6(Lcom/haima/hmcp/listeners/WorkingFileCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/WorkingFileCallback;->onWorking(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$null$65(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkBreakPoint(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onDownload$67(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownload(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDownloadFail$70(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDownloadFail$71()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelProgressChecker()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->cancel()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDownloadFail$72(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->deleteTmpFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onDownloadFail$73(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDownloadFinish$74(Lcom/haima/hmcp/enums/DownloadMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onFinish(Lcom/haima/hmcp/enums/DownloadMode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDownloaded$68(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startMoveFileJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onMovedFail$79(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onMovedFail$80()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->scheduleTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onMovedSuccess$75(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getDownloadedName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "download-file: scan move success file: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/MediaUtil;->scanMedia(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private synthetic lambda$onMovedSuccess$76(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->deleteDownloadMap(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onMovedSuccess$77(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloaded(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$onMovedSuccess$78()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->scheduleTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onProgress$69(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    move-wide v2, p2

    .line 8
    move-wide v4, p4

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onProgress(Lcom/haima/hmcp/beans/CloudFile;JJ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$onProgressFreeze$82(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3ec

    .line 2
    .line 3
    const-string v1, "Network error"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onQueryFail$85(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/QueryCallback;->onQueryFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onQueryFail$86()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelQueryTimerJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseQueryObserver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onQuerySuccess$83(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/QueryCallback;->onQuery(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onQuerySuccess$84()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelQueryTimerJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseQueryObserver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onQueryTimeOut$87()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryCallback:Lcom/haima/hmcp/listeners/QueryCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3ec

    .line 6
    .line 7
    const-string v2, "Query time out"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/listeners/QueryCallback;->onQueryFail(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$onRunning$81()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;->onDownloading()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$onStartKeepAlive$88(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->handleStartKeepAliveOperationMessage(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$23()V
    .locals 3

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    const-string v1, "The file is null"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$24(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$25(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$26(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$27(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$28(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$prepareDownloadFile$29(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkBreakPoint(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$queryFiles$9(Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalQueryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$scheduleTask$22(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->prepareDownloadFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$startDownloadRetryJob$66(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "to retry download retry, file="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "download-file: "

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
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "the task is hang up, don`t to download retry"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, "no file in hang up task, add retry file into hang up task"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v1, 0x0

    .line 113
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lcom/haima/hmcp/beans/CloudFile;

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_1

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    if-nez v1, :cond_3

    .line 180
    .line 181
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, "retry file is not in hang up task list, add retry file into hang up task"

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/HangUpData;->mHangUpFiles:Ljava/util/ArrayList;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 217
    .line 218
    new-instance v0, Lcom/haima/hmcp/cloud/video/h;

    .line 219
    .line 220
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/h;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method private synthetic lambda$startKeepAlive$53(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->waitKeepAliveResult(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$startScanFileJob$63(Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcom/haima/hmcp/listeners/SearchCallback;->onSearched(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$toRequestKeepAlive$56()V
    .locals 2

    .line 1
    const/16 v0, 0x3ec

    .line 2
    .line 3
    const-string v1, "Network status error"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$updateFiles$8(Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->internalUpdateFiles(Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$waitKeepAliveResult$54(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    const-string v1, "web-socket is not ready"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$waitKeepAliveResult$55(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->toRequestKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedSuccess$75(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic m0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$23()V

    return-void
.end method

.method public static synthetic n(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$null$20()V

    return-void
.end method

.method public static synthetic n0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$28(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method private nextStepPost(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "download handler is null when post runnable"

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->handleExceptionStata(Ljava/lang/String;)V

    return-void
.end method

.method private nextStepPost(Ljava/lang/Runnable;J)V
    .locals 1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "download handler is null when post runnable"

    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->handleExceptionStata(Ljava/lang/String;)V

    return-void
.end method

.method private nextStepPost(Ljava/lang/Runnable;JLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, p4, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "download handler is null when post runnable"

    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->handleExceptionStata(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/haima/hmcp/listeners/WorkingFileCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$null$6(Lcom/haima/hmcp/listeners/WorkingFileCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/haima/hmcp/cloud/video/DownloadTask;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onStartKeepAlive$88(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$25(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWebSocketState$47()V

    return-void
.end method

.method private prepareDownloadFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: prepare to download file: "

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/haima/hmcp/cloud/video/a2;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/a2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v0, Lcom/haima/hmcp/cloud/video/b2;

    .line 47
    .line 48
    const-string v1, "illegal argument error: name is null"

    .line 49
    .line 50
    invoke-direct {v0, p0, p1, v1}, Lcom/haima/hmcp/cloud/video/b2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_0
    const-string v3, "download-file: "

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, "illegal argument error: path can`t write"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ", "

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/haima/hmcp/cloud/video/c2;

    .line 118
    .line 119
    invoke-direct {v0, p0, p1, v3}, Lcom/haima/hmcp/cloud/video/c2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    new-instance v0, Lcom/haima/hmcp/cloud/video/d2;

    .line 137
    .line 138
    const-string v1, "illegal argument error: cloudPath is null"

    .line 139
    .line 140
    invoke-direct {v0, p0, p1, v1}, Lcom/haima/hmcp/cloud/video/d2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    const-wide/16 v6, 0x0

    .line 152
    .line 153
    cmp-long v0, v4, v6

    .line 154
    .line 155
    if-gtz v0, :cond_5

    .line 156
    .line 157
    new-instance v0, Lcom/haima/hmcp/cloud/video/e2;

    .line 158
    .line 159
    const-string v1, "illegal argument error: size is null"

    .line 160
    .line 161
    invoke-direct {v0, p0, p1, v1}, Lcom/haima/hmcp/cloud/video/e2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_5
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 170
    .line 171
    .line 172
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    cmp-long v2, v4, v6

    .line 174
    .line 175
    if-gtz v2, :cond_6

    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    goto :goto_1

    .line 179
    :catch_0
    nop

    .line 180
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v2, "illegal argument error: size="

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 193
    .line 194
    .line 195
    move-result-wide v1

    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lcom/haima/hmcp/cloud/video/f2;

    .line 204
    .line 205
    invoke-direct {v1, p0, p1, v0}, Lcom/haima/hmcp/cloud/video/f2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_7
    iget-object v0, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getDownloadTime()J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    cmp-long v2, v0, v6

    .line 219
    .line 220
    if-eqz v2, :cond_8

    .line 221
    .line 222
    const-wide/16 v4, 0x3c

    .line 223
    .line 224
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    const-wide/16 v4, 0xe10

    .line 229
    .line 230
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    iget-object v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 235
    .line 236
    invoke-virtual {v2, v0, v1}, Lcom/haima/hmcp/beans/CloudFile;->setDownloadTime(J)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v1, "reset keep alive time: "

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getDownloadTime()J

    .line 252
    .line 253
    .line 254
    move-result-wide v1

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_8
    iget-object v0, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 286
    .line 287
    iget v1, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    .line 288
    .line 289
    int-to-long v1, v1

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/beans/CloudFile;->setDownloadTime(J)V

    .line 291
    .line 292
    .line 293
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v1

    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v1, ".tmp"

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iput-object v0, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 315
    .line 316
    new-instance v0, Lcom/haima/hmcp/cloud/video/g2;

    .line 317
    .line 318
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/g2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public static synthetic q(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->stopKeepAlive()V

    return-void
.end method

.method public static synthetic q0(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWsServerSocketState$52(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic r(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleStartKeepAliveOperationMessage$62(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic r0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkBreakPoint$30(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method private releaseAccessOpenObserver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "release access open observer"

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
    const-string v0, "12630"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 41
    .line 42
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;->release()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private releaseDownload()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file:  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "release download task..."

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
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadJob()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelProgressChecker()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelMoveFileJob()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    const-string v1, "download-file: clear download files"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;->IDLE:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 56
    .line 57
    return-void
.end method

.method private releaseJob()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelScanFileJob()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelQueryTimerJob()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private releaseKeepAliveObserver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "download-file: release keep alive observer"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;->release()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveObserver:Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private releaseQueryObserver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "release query observer"

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/observer/QueryObserver;->release()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryObserver:Lcom/haima/hmcp/cloud/video/observer/QueryObserver;

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private releaseTask()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file:  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "release download task..."

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
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseJob()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    const-string v1, "download-file: clear download files"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;->IDLE:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 41
    .line 42
    return-void
.end method

.method private releaseWsServerOpenObserver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "release ws-server open observer"

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
    const-string v0, "12630"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 41
    .line 42
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;->release()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenObserver:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private removeMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "download-file: remove job token: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic s(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$waitKeepAliveResult$55(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method

.method public static synthetic s0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedFail$80()V

    return-void
.end method

.method private scheduleTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/haima/hmcp/cloud/video/w0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/w0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "download-file: get download file from file list"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mFiles:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 35
    .line 36
    new-instance v1, Lcom/haima/hmcp/cloud/video/x0;

    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/cloud/video/x0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private startAccessOpenTimerJob(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "start access open timer-out job, delay: 5000"

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
    const-string v0, "12630"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTask$7;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask$7;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;-><init>(Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mAccessOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 41
    .line 42
    const-wide/16 v1, 0x1388

    .line 43
    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private startDownloadJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->url:Ljava/lang/String;

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
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "download url: "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "download-file: "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v3, "12630"

    .line 97
    .line 98
    invoke-static {v3, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, " is downloading when the next file to download"

    .line 133
    .line 134
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v6, "download-file:  "

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->cancel()V

    .line 167
    .line 168
    .line 169
    iput-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 170
    .line 171
    :cond_2
    iput-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 172
    .line 173
    new-instance v1, Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 174
    .line 175
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-direct {v1, v2, p1, p0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;-><init>(Landroid/content/Context;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setUrl(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setCid(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 200
    .line 201
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method private startDownloadRetryJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadRetryJob()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "start download retry job, file="

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", delay="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "12630"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "download-file: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 57
    .line 58
    new-instance v1, Lcom/haima/hmcp/cloud/video/z1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/z1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;-><init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadRetryJob:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;

    .line 67
    .line 68
    invoke-direct {p0, v0, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private startKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/p0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/p0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private startKeepAliveTimerJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "download-file: "

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->getInnerCloudFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->cancel()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "has a keep alive timer when wait keep alive result, file: "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v3, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p3}, Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;->getInterval()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "to start keep alive timer, timeout="

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, "; file="

    .line 86
    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v5, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-wide/16 v6, -0x1

    .line 118
    .line 119
    cmp-long v0, v3, v6

    .line 120
    .line 121
    if-nez v0, :cond_2

    .line 122
    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v0, "keep alive result strategy over limit: "

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-static {v5, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string p3, "12630"

    .line 159
    .line 160
    invoke-static {p3, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 164
    .line 165
    const/16 p2, 0x3ec

    .line 166
    .line 167
    const-string p3, "Keep alive over limit"

    .line 168
    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/4 p1, 0x0

    .line 173
    return p1

    .line 174
    :cond_2
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 175
    .line 176
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTask$4;

    .line 177
    .line 178
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask$4;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;-><init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 185
    .line 186
    invoke-virtual {v0, p3}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->setStrategy(Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mKeepAliveTimerJob:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;

    .line 190
    .line 191
    invoke-direct {p0, p1, v3, v4}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 192
    .line 193
    .line 194
    const/4 p1, 0x1

    .line 195
    return p1
.end method

.method private startMoveFileJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1, p0}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mMoveFileJob:Lcom/haima/hmcp/cloud/video/job/MoveFileJob;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private startProgressChecker()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelProgressChecker()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "start file download progress checker, interval: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "download-file: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 50
    .line 51
    invoke-direct {v0, v1, p0}, Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 57
    .line 58
    iget-wide v1, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 59
    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private startQueryTimerJob()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelQueryTimerJob()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "download-file: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "start query timer; time=5000"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;-><init>(Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mQueryTimerJob:Lcom/haima/hmcp/cloud/video/job/QueryTimerJob;

    .line 34
    .line 35
    const-wide/16 v1, 0x1388

    .line 36
    .line 37
    invoke-direct {p0, v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private startScanFileJob(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "download-file: start scan file job"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 27
    .line 28
    new-instance v3, Lcom/haima/hmcp/cloud/video/DownloadTask$5;

    .line 29
    .line 30
    invoke-direct {v3, p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask$5;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/SearchCallback;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v0, v3}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;-><init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 37
    .line 38
    sget-object v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_TEMP_FILE_PATH:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "download-file: "

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "scan file exception, cause tmp folder is null"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "12630"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/haima/hmcp/cloud/video/h1;

    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/haima/hmcp/cloud/video/h1;-><init>(Lcom/haima/hmcp/listeners/SearchCallback;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->setCid(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->setScanPath(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private startWsServerOpenTimerJob(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "start ws-server open timer-out job, delay: 5000"

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
    const-string v0, "12630"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/DownloadTask$9;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask$9;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;-><init>(Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWsServerOpenTimerJob:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;

    .line 41
    .line 42
    const-wide/16 v1, 0x1388

    .line 43
    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private stopKeepAlive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "stop keep alive error: mHmcpRequest is null"

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
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "download-file: request stop download keep alive"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "12635"

    .line 41
    .line 42
    const-string v1, "request"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v2, Lcom/haima/hmcp/cloud/video/DownloadTask$3;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestStopForceKeepAlive(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic t(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkDiskStorage$33()V

    return-void
.end method

.method public static synthetic t0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$waitKeepAliveResult$54(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method private toRequestKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object v4, p1

    .line 3
    iget-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "12630"

    .line 7
    .line 8
    const-string v3, "download-file: request keep alive, "

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->isSameFile(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v5, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "before request keep alive, the file is check failed: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "download-file: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "download-file: before request keep alive, check file is same"

    .line 76
    .line 77
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getDownloadTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v5, "time: "

    .line 92
    .line 93
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, ", strategy: "

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-object v5, p2

    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, "; "

    .line 109
    .line 110
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-object/from16 v6, p3

    .line 114
    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v10, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "12634"

    .line 141
    .line 142
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 146
    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iput-object v1, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 150
    .line 151
    :cond_2
    new-instance v0, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 157
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    iget-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 163
    .line 164
    invoke-virtual {v0, v2, v3}, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->setRequestTime(J)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 168
    .line 169
    iget-object v1, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;->setCloudFile(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 172
    .line 173
    .line 174
    iget-object v10, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 175
    .line 176
    iget-object v11, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 177
    .line 178
    new-instance v12, Lcom/haima/hmcp/cloud/video/DownloadTask$2;

    .line 179
    .line 180
    move-object v0, v12

    .line 181
    move-object v1, p0

    .line 182
    move-object v4, p1

    .line 183
    move-object v5, p2

    .line 184
    move-object/from16 v6, p3

    .line 185
    .line 186
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/cloud/video/DownloadTask$2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;JLcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v11, v8, v9, v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestStartForceKeepAlive(Ljava/lang/String;JLcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_3
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v3, "mHmcpRequest is null or mHmcpRequest.isStopPlay is true"

    .line 204
    .line 205
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelKeepAliveTimerJob()V

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseKeepAliveObserver()V

    .line 222
    .line 223
    .line 224
    iput-object v1, v7, Lcom/haima/hmcp/cloud/video/DownloadTask;->keepAliveResponseValidation:Lcom/haima/hmcp/cloud/video/bean/KeepAliveResponseValidation;

    .line 225
    .line 226
    new-instance v0, Lcom/haima/hmcp/cloud/video/j0;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/j0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method public static synthetic u(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$cancelDownload$4(Lcom/haima/hmcp/listeners/CancelCallback;)V

    return-void
.end method

.method public static synthetic u0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkContinueTask$11()V

    return-void
.end method

.method public static synthetic v(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$prepareDownloadFile$24(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onMovedSuccess$76(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic w(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloadFail$71()V

    return-void
.end method

.method public static synthetic w0(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalCancel$17(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    return-void
.end method

.method private waitKeepAliveResult(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAliveTimerJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseKeepAliveObserver()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->createKeepAliveObserver()Lcom/haima/hmcp/listeners/WebSocketObserver;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/IWebSocket;->addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/haima/hmcp/cloud/video/s0;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/s0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    sget-object p2, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "download-file: "

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "WebSocketManager is null or is not connect"

    .line 57
    .line 58
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lcom/haima/hmcp/cloud/video/h0;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lcom/haima/hmcp/cloud/video/h0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static synthetic x(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$handleStartKeepAliveOperationMessage$61(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method

.method public static synthetic x0(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$internalTransferData$43(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    return-void
.end method

.method public static synthetic y(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$updateFiles$8(Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V

    return-void
.end method

.method public static synthetic y0(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onDownloadFail$72(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    return-void
.end method

.method public static synthetic z(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$checkWsServerSocketState$51(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic z0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->lambda$onQuerySuccess$84()V

    return-void
.end method


# virtual methods
.method public cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x3e9

    .line 8
    .line 9
    const-string v1, "The download task is not ready"

    .line 10
    .line 11
    invoke-interface {p2, p1, v0, v1}, Lcom/haima/hmcp/listeners/CancelCallback;->onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Lcom/haima/hmcp/cloud/video/v;

    .line 18
    .line 19
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/cloud/video/v;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lcom/haima/hmcp/cloud/video/x;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/cloud/video/x;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public checkHangUpData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHangUpData:Lcom/haima/hmcp/cloud/video/bean/HangUpData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public continueTask()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: continue task"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkContinueTask()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public execute(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/enums/DownloadMode;",
            "Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: download task execute..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCallbackToApp:Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 13
    .line 14
    const-string p3, "download-file: "

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, "The download task fail, cause mHmcpRequest is null"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/haima/hmcp/cloud/video/h2;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/h2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-boolean p2, p2, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, "The download task fail, cause mHmcpRequest.isStopPlay is true"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lcom/haima/hmcp/cloud/video/i2;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/i2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, "The download task fail, cause cid is null"

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/haima/hmcp/cloud/video/j2;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/j2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->url:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_3

    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, "The download task fail, download url is null"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/haima/hmcp/cloud/video/l2;

    .line 146
    .line 147
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/l2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->checkStatus(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public getMode()Lcom/haima/hmcp/enums/DownloadMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: transfer data"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/cloud/video/d1;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/d1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getWorkingFiles(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "download-file: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "DownloadHandler is null"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x3e9

    .line 30
    .line 31
    const-string v0, "The download task is not ready"

    .line 32
    .line 33
    invoke-interface {p2, p1, v0}, Lcom/haima/hmcp/listeners/WorkingFileCallback;->onWorkingFail(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Lcom/haima/hmcp/cloud/video/q0;

    .line 38
    .line 39
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/cloud/video/q0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mState:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;->WORKING:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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

.method public keepAliveTimeUp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    const-string v1, "download-file:  "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "The task is not ready"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "Cancel "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v3, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, " download cause: Keep alive is time out"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    sget-object v3, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, "; "

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "12630"

    .line 120
    .line 121
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/haima/hmcp/cloud/video/l;

    .line 125
    .line 126
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/cloud/video/l;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    :goto_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, "No file is downloading"

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public onDownload(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startProgressChecker()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/cloud/video/y0;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/y0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDownloadFail(ILjava/lang/String;)V
    .locals 3

    .line 8
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download-file:  download task fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseDownload()V

    .line 11
    new-instance v0, Lcom/haima/hmcp/cloud/video/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/cloud/video/w;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download-file:  download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCurrentInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 3
    new-instance v0, Lcom/haima/hmcp/cloud/video/m0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/m0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 4
    new-instance p2, Lcom/haima/hmcp/cloud/video/n0;

    invoke-direct {p2, p0}, Lcom/haima/hmcp/cloud/video/n0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 5
    new-instance p2, Lcom/haima/hmcp/cloud/video/d;

    invoke-direct {p2, p0}, Lcom/haima/hmcp/cloud/video/d;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 6
    new-instance p2, Lcom/haima/hmcp/cloud/video/o0;

    invoke-direct {p2, p0, p1}, Lcom/haima/hmcp/cloud/video/o0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    invoke-direct {p0, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 7
    new-instance p1, Lcom/haima/hmcp/cloud/video/p;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/p;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFinish()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: download task finish, DownloadMode: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadMode:Lcom/haima/hmcp/enums/DownloadMode;

    .line 26
    .line 27
    new-instance v1, Lcom/haima/hmcp/cloud/video/g1;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/cloud/video/g1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/enums/DownloadMode;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseDownload()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onDownloaded(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/d;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/haima/hmcp/cloud/video/e;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/e;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/haima/hmcp/cloud/video/f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/f;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/haima/hmcp/cloud/video/g;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/g;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: move temp file fail: "

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
    const-string v0, "12630"

    .line 24
    .line 25
    invoke-static {v0, p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p3, Lcom/haima/hmcp/cloud/video/q;

    .line 29
    .line 30
    invoke-direct {p3, p0}, Lcom/haima/hmcp/cloud/video/q;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    new-instance p3, Lcom/haima/hmcp/cloud/video/r;

    .line 37
    .line 38
    const-string v0, "I/O error"

    .line 39
    .line 40
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/haima/hmcp/cloud/video/r;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/haima/hmcp/cloud/video/s;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/s;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onMovedSuccess(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: move temp file success"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getFileSuffix()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportVideo(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getFileSuffix()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportPicture(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/haima/hmcp/cloud/video/b1;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/b1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/haima/hmcp/cloud/video/q;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/q;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/haima/hmcp/cloud/video/c1;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/c1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/haima/hmcp/cloud/video/e1;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/e1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/haima/hmcp/cloud/video/f1;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/f1;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onProgress(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/haima/hmcp/cloud/video/v0;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-wide v5, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/cloud/video/v0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v7}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onProgressCheck()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->isDownloading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getProgress()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCheckDownloadProgressJob:Lcom/haima/hmcp/cloud/video/job/CheckDownloadProgressJob;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 20
    .line 21
    iget-wide v3, v3, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 22
    .line 23
    invoke-direct {p0, v2, v3, v4}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 v0, -0x1

    .line 28
    .line 29
    :goto_0
    return-wide v0
.end method

.method public onProgressFreeze()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: file download progress freeze"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->cancel()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/haima/hmcp/cloud/video/y;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/cloud/video/y;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onQueryFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/t2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/cloud/video/t2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/haima/hmcp/cloud/video/b;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/b;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onQuerySuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/t;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/haima/hmcp/cloud/video/u;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/u;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onQueryTimeOut()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/z;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelQueryTimerJob()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseQueryObserver()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRetry(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadJob:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "download retry, file="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", delay="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "12630"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelProgressChecker()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->cancelDownloadJob()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startDownloadRetryJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onRunning(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/haima/hmcp/cloud/video/c0;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/haima/hmcp/cloud/video/c0;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->dispatchMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStartKeepAlive(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: start keep alive result: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->releaseKeepAliveObserver()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/haima/hmcp/cloud/video/k2;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/k2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onStopKeepAlive(Z)V
    .locals 0

    return-void
.end method

.method public pauseTask()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "download-file: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "hang up task"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/haima/hmcp/cloud/video/s2;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/haima/hmcp/cloud/video/s2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public queryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/video/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/i;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/QueryCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public scanFile(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mDownloadHandler:Lcom/haima/hmcp/cloud/video/DownloadTask$DownloadHandler;

    .line 2
    .line 3
    const-string v1, "download-file:  "

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "Scan file fail cause: the task is not ready"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/16 p1, 0x3e9

    .line 32
    .line 33
    invoke-interface {p2, p1, v1}, Lcom/haima/hmcp/listeners/SearchCallback;->onSearchFail(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mScanFileJob:Lcom/haima/hmcp/cloud/video/job/ScanFileJob;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "Scan file task is running"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    const/16 p1, 0x3ee

    .line 66
    .line 67
    invoke-interface {p2, p1, v1}, Lcom/haima/hmcp/listeners/SearchCallback;->onSearchFail(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->startScanFileJob(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mCid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "download-file: config: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setHmcpRequest(Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mHmcpRequest:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-void
.end method

.method public updateFiles(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/UpdateCallback;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "download-file:  update files callback is null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "download-file: "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "download task is not running"

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0x3e9

    .line 42
    .line 43
    const-string p2, "The download task is not ready"

    .line 44
    .line 45
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/listeners/UpdateCallback;->onUpdateFail(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Lcom/haima/hmcp/cloud/video/c;

    .line 50
    .line 51
    invoke-direct {p1, p0, p2, p3}, Lcom/haima/hmcp/cloud/video/c;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->nextStepPost(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
