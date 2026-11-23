.class public Lapp/mgsim/arena/UDPHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;,
        Lapp/mgsim/arena/UDPHelper$UDPSendThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArenaUDP"

.field private static UPD_PORT:I = 0x3012


# instance fields
.field private mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Ljava/net/DatagramSocket;

.field private final mContext:Landroid/content/Context;

.field private mLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private volatile mRetryCount:I


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
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 7
    .line 8
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$100(Lapp/mgsim/arena/UDPHelper;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lapp/mgsim/arena/UDPHelper;)Ljava/net/DatagramSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lapp/mgsim/arena/UDPHelper;BJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lapp/mgsim/arena/UDPHelper;->updateMapForPings(BJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lapp/mgsim/arena/UDPHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->restartReceiveThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lapp/mgsim/arena/UDPHelper;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lapp/mgsim/arena/UDPHelper;->createBuf(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private createBuf(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private initUDPClient()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    .line 2
    .line 3
    sget v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    .line 9
    .line 10
    const/16 v1, 0x2710

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    iget v1, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    sget v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    sput v1, Lapp/mgsim/arena/UDPHelper;->UPD_PORT:I

    .line 26
    .line 27
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->initUDPClient()V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "initUDP -->mRetryCount:"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "--SocketException: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 65
    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method private restartReceiveThread()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lapp/mgsim/arena/UDPHelper;->releaseWifiLock()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "wifi"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    :try_start_0
    const-string v1, "test udp wifi"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v1, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, p0, v2}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private updateMapForPings(BJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lapp/mgsim/arena/AreaInfo;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, p2, p3}, Lapp/mgsim/arena/AreaInfo;->setPingTime(J)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method


# virtual methods
.method public getAreaMaps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public initUDPAndStart([Lapp/mgsim/arena/AreaInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    iget-object v4, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v3}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "wifi"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 46
    .line 47
    :try_start_0
    const-string v2, "test udp wifi"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    const/16 v0, 0xa

    .line 61
    .line 62
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 63
    .line 64
    invoke-direct {p0}, Lapp/mgsim/arena/UDPHelper;->initUDPClient()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/Thread;

    .line 68
    .line 69
    new-instance v2, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-direct {v2, p0, v3}, Lapp/mgsim/arena/UDPHelper$UDPReceiveThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/UDPHelper$1;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    .line 80
    .line 81
    array-length v0, p1

    .line 82
    :goto_2
    if-ge v1, v0, :cond_2

    .line 83
    .line 84
    aget-object v2, p1, v1

    .line 85
    .line 86
    new-instance v3, Ljava/lang/Thread;

    .line 87
    .line 88
    new-instance v4, Lapp/mgsim/arena/UDPHelper$UDPSendThread;

    .line 89
    .line 90
    invoke-direct {v4, p0, v2}, Lapp/mgsim/arena/UDPHelper$UDPSendThread;-><init>(Lapp/mgsim/arena/UDPHelper;Lapp/mgsim/arena/AreaInfo;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    return-void
.end method

.method printMsg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method releaseWifiLock()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "releaseWifiLock mLock  release exception----"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lapp/mgsim/arena/UDPHelper;->printMsg(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mClient:Ljava/net/DatagramSocket;

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0xa

    .line 12
    .line 13
    iput v0, p0, Lapp/mgsim/arena/UDPHelper;->mRetryCount:I

    .line 14
    .line 15
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public updateMaps(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lapp/mgsim/arena/AreaInfo;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ne v3, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getBj()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x2

    .line 53
    if-ne v3, v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getSh()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/4 v4, 0x3

    .line 77
    if-ne v3, v4, :cond_0

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getGz()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lapp/mgsim/arena/UDPHelper;->mAreaMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1
.end method
