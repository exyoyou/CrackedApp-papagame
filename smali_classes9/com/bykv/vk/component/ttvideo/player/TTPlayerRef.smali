.class public Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;
.super Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTPlayerRef"

.field private static mAppPath:Ljava/lang/String;

.field private static mLoadErr:Ljava/lang/String;


# instance fields
.field private mClient:Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

.field private mContext:Landroid/content/Context;

.field private mId:J

.field private mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mId:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method public static final declared-synchronized create(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;
    .locals 4

    .line 1
    const-class v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mAppPath:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getAppFileCachePath(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mAppPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    .line 14
    :try_start_1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getAppPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mAppPath:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setTempFileDir(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    :goto_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p0, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mClient:Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .line 44
    :try_start_3
    new-instance p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 45
    .line 46
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mId:J

    .line 47
    .line 48
    invoke-direct {p0, p1, v2, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;-><init>(Landroid/content/Context;J)V

    .line 49
    .line 50
    .line 51
    iput-object p0, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setNotifyer(Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object v1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_4
    new-instance p1, Ljava/lang/StringBuffer;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    .line 63
    .line 64
    :try_start_5
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->getErrorInfo()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    const-string p0, ",player:"

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/lang/RuntimeException;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    .line 100
    .line 101
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    monitor-exit v0

    .line 109
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->close()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getDoubleOption(ID)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getDoubleOption(ID)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method protected getFloatOption(IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getFloatOption(IF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIntOption(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getIntOption(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected getLifeId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getIntOption(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getLongOption(IJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getNativeObject()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getNativePlayer()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected getObjectOption(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getObjectValue(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getStringOption(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleErrorNotify(JIILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mClient:Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    .line 2
    .line 3
    invoke-virtual {p1, p3, p4, p5}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->onPlayLogInfo(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handlePlayerNotify(JIIILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mClient:Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    .line 2
    .line 3
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->onPlayerNotify(IIILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public mouseEvent(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mouseEvent(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->pause()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->prepare()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prevClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->prevClose()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->reset()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rotateCamera(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->rotateCamera(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->seekTo(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setCacheFile(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method protected setDataSourceFd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setDataSourceFd(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setDoubleOption(ID)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setDoubleOption(ID)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setFloatOption(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setFloatOption(IF)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIntOption(II)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setIntOption(II)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method protected setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLongOption(IJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setLongOption(IJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLooping(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setLooping(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNotifyState(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setNotifyerState(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setOnScreenshotListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setOnScreenshotListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setStringOption(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setVideoSurface(Landroid/view/Surface;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->setVolume(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->start()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->stop()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public switchStream(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->switchStream(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public takeScreenshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->takeScreenshot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
