.class public Lorg/hmwebrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/NetworkMonitor$InstanceHolder;,
        Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private volatile currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private networkChangeDetectorFactory:Lorg/hmwebrtc/NetworkChangeDetectorFactory;

.field private final networkChangeDetectorLock:Ljava/lang/Object;

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field

.field private numObservers:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/hmwebrtc/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lorg/hmwebrtc/NetworkMonitor$1;-><init>(Lorg/hmwebrtc/NetworkMonitor;)V

    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/hmwebrtc/NetworkChangeDetectorFactory;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    .line 8
    sget-object v0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/NetworkMonitor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/NetworkMonitor;Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/hmwebrtc/NetworkMonitor;Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/hmwebrtc/NetworkMonitor;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lorg/hmwebrtc/NetworkMonitor;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/NetworkMonitor;->notifyObserversOfNetworkPreference(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addNetworkObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/hmwebrtc/NetworkMonitor;->getInstance()Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/NetworkMonitor;->addObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static androidSdkInt()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    const-string v0, "Expected to be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method static createAndSetAutoDetectForTest(Landroid/content/Context;)Lorg/hmwebrtc/NetworkMonitorAutoDetect;
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/NetworkMonitor;->getInstance()Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0, p0}, Lorg/hmwebrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iput-object p0, v0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 10
    .line 11
    check-cast p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;

    .line 12
    .line 13
    return-object p0
.end method

.method private createNetworkChangeDetector(Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/hmwebrtc/NetworkChangeDetectorFactory;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/NetworkMonitor$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/hmwebrtc/NetworkMonitor$2;-><init>(Lorg/hmwebrtc/NetworkMonitor;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Lorg/hmwebrtc/NetworkChangeDetectorFactory;->create(Lorg/hmwebrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private getCurrentConnectionType()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Lorg/hmwebrtc/NetworkMonitor;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lorg/hmwebrtc/NetworkMonitor$InstanceHolder;->instance:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getNativeNetworkObserversSync()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/NetworkMonitor;->getInstance()Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0}, Lorg/hmwebrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private native nativeNotifyOfNetworkPreference(JLorg/hmwebrtc/NetworkChangeDetector$ConnectionType;I)V
.end method

.method private networkBindingSupported()Z
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lorg/hmwebrtc/NetworkChangeDetector;->supportNetworkCallback()Z

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

.method private notifyObserversOfConnectionTypeChange(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {p0, v1, v2}, Lorg/hmwebrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;

    .line 55
    .line 56
    invoke-interface {v1, p1}, Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method private notifyObserversOfNetworkConnect(Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {p0, v1, v2, p1}, Lorg/hmwebrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {p0, v1, v2, p1, p2}, Lorg/hmwebrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkPreference(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-direct {p0, v3, v4, v1, p2}, Lorg/hmwebrtc/NetworkMonitor;->nativeNotifyOfNetworkPreference(JLorg/hmwebrtc/NetworkChangeDetector$ConnectionType;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static removeNetworkObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/hmwebrtc/NetworkMonitor;->getInstance()Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/NetworkMonitor;->removeObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private startMonitoring(Landroid/content/Context;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    const-string v0, "NetworkMonitor"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start monitoring with native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/hmwebrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    .line 11
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-direct {p0, p2, p3}, Lorg/hmwebrtc/NetworkMonitor;->updateObserverActiveNetworkList(J)V

    .line 15
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 16
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 17
    iget-object p2, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter p2

    .line 18
    :try_start_5
    iget-object p3, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p3, :cond_1

    .line 19
    :try_start_6
    invoke-interface {p3}, Lorg/hmwebrtc/NetworkChangeDetector;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p3

    :try_start_7
    const-string v0, "NetworkMonitor"

    const-string v1, "Exception in startMonitoring destroy()"

    .line 20
    invoke-static {v0, v1, p3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "throwExceptionMsg"

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkMonitor.startMonitoring Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-static {v0, p3}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p3, 0x0

    .line 24
    iput-object p3, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 25
    :cond_1
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string p2, "NetworkMonitor"

    const-string p3, "Exception in startMonitoring"

    .line 26
    invoke-static {p2, p3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "throwExceptionMsg"

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkMonitor.startMonitoring Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 30
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method private stopMonitoring(J)V
    .locals 3
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    const-string v0, "NetworkMonitor"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop monitoring with native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitor;->stopMonitoring()V

    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateCurrentConnectionType(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private updateObserverActiveNetworkList(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Lorg/hmwebrtc/NetworkChangeDetector;->getActiveNetworkList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v0, v0, [Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;

    .line 35
    .line 36
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method


# virtual methods
.method public addObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method getNetworkChangeDetector()Lorg/hmwebrtc/NetworkChangeDetector;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method getNumObservers()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public removeObserver(Lorg/hmwebrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public setNetworkChangeDetectorFactory(Lorg/hmwebrtc/NetworkChangeDetectorFactory;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    invoke-static {v0}, Lorg/hmwebrtc/NetworkMonitor;->assertIsTrue(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorFactory:Lorg/hmwebrtc/NetworkChangeDetectorFactory;

    .line 12
    .line 13
    return-void
.end method

.method public startMonitoring()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {}, Lorg/hmwebrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hmwebrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    invoke-interface {p1}, Lorg/hmwebrtc/NetworkChangeDetector;->getCurrentConnectionType()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor;->currentConnectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopMonitoring()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/hmwebrtc/NetworkMonitor;->numObservers:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1}, Lorg/hmwebrtc/NetworkChangeDetector;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "NetworkMonitor"

    const-string v3, "Exception in stopMonitoring destroy()"

    .line 5
    invoke-static {v2, v3, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "throwExceptionMsg"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkMonitor.stopMonitoring Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v2, v1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lorg/hmwebrtc/NetworkMonitor;->networkChangeDetector:Lorg/hmwebrtc/NetworkChangeDetector;

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
