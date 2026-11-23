.class public Lorg/webrtc/haima/HmDataChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;
    }
.end annotation


# static fields
.field public static final BEHAVIOR:Ljava/lang/String; = "behavior"

.field public static final BEHAVIOR_VALUE:Ljava/lang/String; = "values"

.field public static final CAMERA:Ljava/lang/String; = "camera"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final DISPLAY:Ljava/lang/String; = "display"

.field public static final GALLERY:Ljava/lang/String; = "gallery"

.field public static final HAIMA_DATA_CHANNEL_CAMERA:Ljava/lang/String; = "HaimaCamera"

.field public static final HAIMA_DATA_CHANNEL_INPUT:Ljava/lang/String; = "HaimaInput"

.field public static final HAIMA_DATA_CHANNEL_MICROPHONE:Ljava/lang/String; = "HmMicrophone"

.field private static final HAIMA_DATA_CHANNEL_SIGNAL:Ljava/lang/String; = "HaimaRTCSignal"

.field public static final INPUT:Ljava/lang/String; = "input"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field private static final QOS_DATA_CHANNEL_TAG:Ljava/lang/String; = "HaimaQos"

.field public static final SIGNAL:Ljava/lang/String; = "signal"

.field public static final SPECIAL_DEVICE_ID:Ljava/lang/String; = "deviceID"

.field private static final TAG:Ljava/lang/String; = "HmDataChannelManager"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field private static mInstance:Lorg/webrtc/haima/HmDataChannelManager;


# instance fields
.field public disposed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hmDataChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/webrtc/haima/HmDCDevice;",
            ">;"
        }
    .end annotation
.end field

.field private hmOnDCDeviceStateChangeListener:Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;

.field private mAudioVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

.field private mVideoVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->disposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method

.method public static getInstance()Lorg/webrtc/haima/HmDataChannelManager;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/webrtc/haima/HmDataChannelManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/webrtc/haima/HmDataChannelManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 13
    .line 14
    return-object v0
.end method

.method public static release()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/HmDataChannelManager;->disposeAllDataChannel()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmDataChannelManager;->setHmOnDCDeviceStateChangeListener(Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lorg/webrtc/haima/HmDataChannelManager;->mInstance:Lorg/webrtc/haima/HmDataChannelManager;

    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public createDataChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/haima/HmDCDevice;

    if-eqz v1, :cond_0

    const-string v2, "HmDataChannelManager"

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data channel already created, reuse it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Lorg/webrtc/haima/HmDCDevice;

    iget-object v1, v1, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-direct {v2, v1}, Lorg/webrtc/haima/HmDCDevice;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 6
    iget-object v1, v2, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-virtual {v1, v2}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "HmDataChannelManager"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create data channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lorg/hmwebrtc/DataChannel$Init;

    invoke-direct {v1}, Lorg/hmwebrtc/DataChannel$Init;-><init>()V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lorg/hmwebrtc/DataChannel$Init;->ordered:Z

    const-string v2, "SCTP"

    .line 11
    iput-object v2, v1, Lorg/hmwebrtc/DataChannel$Init;->protocol:Ljava/lang/String;

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v1, Lorg/hmwebrtc/DataChannel$Init;->negotiated:Z

    const/4 v2, -0x1

    .line 13
    iput v2, v1, Lorg/hmwebrtc/DataChannel$Init;->maxRetransmits:I

    .line 14
    invoke-virtual {p1, p2, v1}, Lorg/hmwebrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "HmDataChannelManager"

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fatal error: create data channel failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_1
    new-instance v1, Lorg/webrtc/haima/HmDCDevice;

    invoke-direct {v1, p1}, Lorg/webrtc/haima/HmDCDevice;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 18
    iget-object p1, v1, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 19
    iget-object p1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createDataChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;I)Lorg/webrtc/haima/HmDCDevice;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/haima/HmDCDevice;

    if-eqz v1, :cond_0

    const-string v2, "HmDataChannelManager"

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data channel already created, reuse it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Lorg/webrtc/haima/HmDCDevice;

    iget-object v1, v1, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-direct {v2, v1}, Lorg/webrtc/haima/HmDCDevice;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 27
    iget-object v1, v2, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-virtual {v1, v2}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 28
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "HmDataChannelManager"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create data channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lorg/hmwebrtc/DataChannel$Init;

    invoke-direct {v1}, Lorg/hmwebrtc/DataChannel$Init;-><init>()V

    const/4 v2, 0x0

    .line 31
    iput-boolean v2, v1, Lorg/hmwebrtc/DataChannel$Init;->ordered:Z

    const-string v3, "SCTP"

    .line 32
    iput-object v3, v1, Lorg/hmwebrtc/DataChannel$Init;->protocol:Ljava/lang/String;

    .line 33
    iput-boolean v2, v1, Lorg/hmwebrtc/DataChannel$Init;->negotiated:Z

    .line 34
    iput p3, v1, Lorg/hmwebrtc/DataChannel$Init;->maxRetransmits:I

    .line 35
    invoke-virtual {p1, p2, v1}, Lorg/hmwebrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "HmDataChannelManager"

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fatal error: create data channel failed: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_1
    new-instance p3, Lorg/webrtc/haima/HmDCDevice;

    invoke-direct {p3, p1}, Lorg/webrtc/haima/HmDCDevice;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 39
    iget-object p1, p3, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-virtual {p1, p3}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 40
    iget-object p1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroyDCDevice(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/webrtc/haima/HmDCDevice;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "not found DC device: "

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return v2

    .line 30
    :cond_0
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmDCDevice;->dispose(Z)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public disposeAllDataChannel()V
    .locals 4

    .line 1
    const-string v0, "HmDataChannelManager"

    .line 2
    .line 3
    const-string v1, "dispose all data channel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->disposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/webrtc/haima/HmDCDevice;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lorg/webrtc/haima/HmDCDevice;->dispose(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method

.method public getHmDCDeviceByName(Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/webrtc/haima/HmDCDevice;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getHmOnDCDeviceStateChangeListener()Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmOnDCDeviceStateChangeListener:Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDataChannel(Lorg/hmwebrtc/DataChannel;)V
    .locals 6

    .line 1
    const-string v0, "HmDataChannelManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "new Data channel from remote: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->disposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v1, "HmDataChannelManager"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, " peerConnection has releasing: "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lorg/webrtc/haima/HmDCDevice;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    const-string v3, "HmDataChannelManager"

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "fatal error: device: "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, " already exist, renew it, maybe didn\'t work."

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmDCDevice;->dispose(Z)V

    .line 122
    .line 123
    .line 124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v3, "datachannel:onDataChannel dc.label:"

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/16 v3, 0x3495

    .line 146
    .line 147
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/4 v4, 0x3

    .line 159
    const/4 v5, 0x2

    .line 160
    sparse-switch v3, :sswitch_data_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :sswitch_0
    const-string v3, "HmMicrophone"

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    const/4 v1, 0x3

    .line 173
    goto :goto_1

    .line 174
    :sswitch_1
    const-string v3, "HaimaRTCSignal"

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_2

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    goto :goto_1

    .line 184
    :sswitch_2
    const-string v3, "HaimaCamera"

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_2

    .line 191
    .line 192
    const/4 v1, 0x2

    .line 193
    goto :goto_1

    .line 194
    :sswitch_3
    const-string v3, "HaimaQos"

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_2

    .line 201
    .line 202
    const/4 v1, 0x1

    .line 203
    goto :goto_1

    .line 204
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 205
    :goto_1
    if-eqz v1, :cond_6

    .line 206
    .line 207
    if-eq v1, v2, :cond_5

    .line 208
    .line 209
    if-eq v1, v5, :cond_4

    .line 210
    .line 211
    if-eq v1, v4, :cond_3

    .line 212
    .line 213
    const-string v1, "HmDataChannelManager"

    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "recv unknown data channel req: "

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_3
    new-instance v1, Lorg/webrtc/haima/HmDCMicrophone;

    .line 242
    .line 243
    invoke-direct {v1, p1}, Lorg/webrtc/haima/HmDCMicrophone;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->mAudioVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmDCMicrophone;->setVdTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 249
    .line 250
    .line 251
    const-string v2, "HmDataChannelManager"

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v4, "microphone setVdTransportType: "

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v4, p0, Lorg/webrtc/haima/HmDataChannelManager;->mAudioVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_4
    new-instance v1, Lorg/webrtc/haima/HmDCCamera;

    .line 289
    .line 290
    invoke-direct {v1, p1}, Lorg/webrtc/haima/HmDCCamera;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->mVideoVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmDCCamera;->setVdTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 296
    .line 297
    .line 298
    const-string v2, "HmDataChannelManager"

    .line 299
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v4, "camera setVdTransportType: "

    .line 306
    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v4, p0, Lorg/webrtc/haima/HmDataChannelManager;->mVideoVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 323
    .line 324
    .line 325
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 326
    .line 327
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_5
    const-string p1, "HmDataChannelManager"

    .line 336
    .line 337
    const-string v1, "Merge feature-KUAISHOU-03 please."

    .line 338
    .line 339
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_6
    new-instance v1, Lorg/webrtc/haima/HmDCSignal;

    .line 344
    .line 345
    invoke-direct {v1, p1}, Lorg/webrtc/haima/HmDCSignal;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 352
    .line 353
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    :goto_2
    monitor-exit v0

    .line 361
    return-void

    .line 362
    :catchall_0
    move-exception p1

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    throw p1

    .line 365
    :sswitch_data_0
    .sparse-switch
        -0x414bc8f -> :sswitch_3
        -0x1cd17b7 -> :sswitch_2
        0x2c11cc5 -> :sswitch_1
        0x57df142f -> :sswitch_0
    .end sparse-switch
.end method

.method public setAudioVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAudioVirtualDeviceTransportType: "

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
    const-string v1, "HmDataChannelManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelManager;->mAudioVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 24
    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 26
    .line 27
    const-string v2, "HmMicrophone"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/webrtc/haima/HmDCDevice;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    check-cast v0, Lorg/webrtc/haima/HmDCMicrophone;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmDCMicrophone;->setVdTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "microphone setVdTransportType: "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public setHmOnDCDeviceStateChangeListener(Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmOnDCDeviceStateChangeListener:Lorg/webrtc/haima/HmDataChannelManager$HmOnDCDeviceStateChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setVideoVirtualDeviceTransportType: "

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
    const-string v1, "HmDataChannelManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/webrtc/haima/HmDataChannelManager;->mVideoVirtualDeviceTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 24
    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/HmDataChannelManager;->hmDataChannels:Ljava/util/HashMap;

    .line 26
    .line 27
    const-string v2, "HaimaCamera"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/webrtc/haima/HmDCDevice;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    check-cast v0, Lorg/webrtc/haima/HmDCCamera;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmDCCamera;->setVdTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "camera setVdTransportType: "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
