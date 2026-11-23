.class Lorg/webrtc/haima/HmInputHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SDP_ATTRIBUTE_NAME:Ljava/lang/String; = "input"

.field private static final TAG:Ljava/lang/String; = "input_chn"


# instance fields
.field private mFallbackMsgCount:J

.field private mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

.field private mLastPrintLogTimeMs:J

.field private mLock:Ljava/lang/Object;

.field private mMsgCount:J

.field private mMsgFailedCount:J

.field private mMsgSuccessCount:J

.field private mRemoteInputVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mRemoteInputVersion:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgCount:J

    .line 19
    .line 20
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgSuccessCount:J

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgFailedCount:J

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mLastPrintLogTimeMs:J

    .line 29
    .line 30
    const-string v0, "input_chn"

    .line 31
    .line 32
    const-string v1, "HmInputHelper ctor"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/HmInputHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmInputHelper;->lambda$setRemoteVersion$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/HmInputHelper;Lorg/hmwebrtc/DataChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmInputHelper;->lambda$tryCreateInputChannel$3(Lorg/hmwebrtc/DataChannel;)V

    return-void
.end method

.method public static synthetic c(Lorg/webrtc/haima/HmInputHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->lambda$newInputchannel$0()V

    return-void
.end method

.method public static synthetic d(Lorg/webrtc/haima/HmInputHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->lambda$destroyInputChannel$4()V

    return-void
.end method

.method public static synthetic e(Lorg/webrtc/haima/HmInputHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->lambda$deleteInputchannel$2()V

    return-void
.end method

.method private internalDeleteInputchannel()Z
    .locals 2

    .line 1
    const-string v0, "input_chn"

    .line 2
    .line 3
    const-string v1, "internalDeleteInputchannel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcInputChannel;->destroyInputChannel()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcInputChannel;->dispose()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 25
    .line 26
    iput-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mRemoteInputVersion:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    :goto_0
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method private internalDestroyInputChannel()V
    .locals 2

    .line 1
    const-string v0, "input_chn"

    .line 2
    .line 3
    const-string v1, "internalDestroyInputChannel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcInputChannel;->destroyInputChannel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private internalGetInputValidVersion()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "input_chn"

    .line 2
    .line 3
    const-string v1, "internalGetInputValidVersion"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcInputChannel;->GetLocalVersion()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private internalNewInputchannel()Z
    .locals 2

    .line 1
    const-string v0, "input_chn"

    .line 2
    .line 3
    const-string v1, "internalNewInputchannel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mRemoteInputVersion:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalDeleteInputchannel()Z

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcInputChannel;

    .line 27
    .line 28
    invoke-direct {v0}, Lorg/webrtc/haima/HmRtcInputChannel;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mRemoteInputVersion:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->setRemoteVersion(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 41
    return v0
.end method

.method private internalSetRemoteVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "internalSetRemoteVersion  version:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string v1, "null"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p1

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "input_chn"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lorg/webrtc/haima/HmInputHelper;->mRemoteInputVersion:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private internalTryCreateInputChannel(Lorg/hmwebrtc/DataChannel;)V
    .locals 3

    .line 1
    const-string v0, "internalTryCreateInputChannel"

    .line 2
    .line 3
    const-string v1, "input_chn"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcInputChannel;->isInputChannelDataChannel(Lorg/hmwebrtc/DataChannel;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "internalTryCreateInputChannel set dc label:"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcInputChannel;->setDataChannel(Lorg/hmwebrtc/DataChannel;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcInputChannel;->isCanCreateInputChannel()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const-string p1, "internalTryCreateInputChannel createInputChannel"

    .line 59
    .line 60
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcInputChannel;->createInputChannel()Z

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method private synthetic lambda$deleteInputchannel$2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalDeleteInputchannel()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$destroyInputChannel$4()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalDestroyInputChannel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$newInputchannel$0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalNewInputchannel()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setRemoteVersion$1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmInputHelper;->internalSetRemoteVersion(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$tryCreateInputChannel$3(Lorg/hmwebrtc/DataChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmInputHelper;->internalTryCreateInputChannel(Lorg/hmwebrtc/DataChannel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public deleteInputchannel(Ljava/util/concurrent/ExecutorService;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/webrtc/haima/j;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/webrtc/haima/j;-><init>(Lorg/webrtc/haima/HmInputHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalDeleteInputchannel()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public destroyInputChannel(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/webrtc/haima/h;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/webrtc/haima/h;-><init>(Lorg/webrtc/haima/HmInputHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalDestroyInputChannel()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public getInputValidVersion(Ljava/util/concurrent/ExecutorService;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalGetInputValidVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isValidInputChannel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcInputChannel;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public newInputchannel(Ljava/util/concurrent/ExecutorService;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/webrtc/haima/g;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/webrtc/haima/g;-><init>(Lorg/webrtc/haima/HmInputHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/haima/HmInputHelper;->internalNewInputchannel()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public sendToRemoteInput(Ljava/util/concurrent/ExecutorService;I[B)I
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/webrtc/haima/HmInputHelper;->mLastPrintLogTimeMs:J

    .line 6
    .line 7
    const-wide/16 v4, 0x2710

    .line 8
    .line 9
    add-long/2addr v2, v4

    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mLastPrintLogTimeMs:J

    .line 15
    .line 16
    const-string p1, "input_chn"

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "sendToRemoteInput msg="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgCount:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",succ="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgSuccessCount:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",fail="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgFailedCount:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",fallbackMsg="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lorg/webrtc/haima/HmInputHelper;->mFallbackMsgCount:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgCount:J

    .line 71
    .line 72
    const-wide/16 v2, 0x1

    .line 73
    .line 74
    add-long/2addr v0, v2

    .line 75
    iput-wide v0, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgCount:J

    .line 76
    .line 77
    iget-object p1, p0, Lorg/webrtc/haima/HmInputHelper;->mLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcInputChannel;->isValid()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    const/4 v1, 0x1

    .line 92
    if-eq p2, v1, :cond_2

    .line 93
    .line 94
    const/4 v4, 0x3

    .line 95
    if-ne p2, v4, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v4, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 101
    :goto_1
    if-eq p2, v1, :cond_4

    .line 102
    .line 103
    const/4 v5, 0x2

    .line 104
    if-ne p2, v5, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const/4 v1, 0x0

    .line 108
    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/webrtc/haima/HmInputHelper;->mHmRtcInputChannel:Lorg/webrtc/haima/HmRtcInputChannel;

    .line 109
    .line 110
    invoke-virtual {p2, v4, p3, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->sendInput(Z[BZ)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_5

    .line 115
    .line 116
    iget-wide p2, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgSuccessCount:J

    .line 117
    .line 118
    add-long/2addr p2, v2

    .line 119
    iput-wide p2, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgSuccessCount:J

    .line 120
    .line 121
    monitor-exit p1

    .line 122
    return v0

    .line 123
    :cond_5
    iget-wide p2, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgFailedCount:J

    .line 124
    .line 125
    add-long/2addr p2, v2

    .line 126
    iput-wide p2, p0, Lorg/webrtc/haima/HmInputHelper;->mMsgFailedCount:J

    .line 127
    .line 128
    :cond_6
    monitor-exit p1

    .line 129
    goto :goto_3

    .line 130
    :catchall_0
    move-exception p2

    .line 131
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    const-string p2, "input_chn"

    .line 135
    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v0, "sendToRemoteInput ex:"

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    const/4 p1, -0x1

    .line 161
    return p1
.end method

.method public setRemoteVersion(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/webrtc/haima/k;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/webrtc/haima/k;-><init>(Lorg/webrtc/haima/HmInputHelper;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmInputHelper;->internalSetRemoteVersion(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public tryCreateInputChannel(Ljava/util/concurrent/ExecutorService;Lorg/hmwebrtc/DataChannel;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/webrtc/haima/i;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/webrtc/haima/i;-><init>(Lorg/webrtc/haima/HmInputHelper;Lorg/hmwebrtc/DataChannel;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmInputHelper;->internalTryCreateInputChannel(Lorg/hmwebrtc/DataChannel;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
