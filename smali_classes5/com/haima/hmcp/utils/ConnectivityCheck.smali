.class public Lcom/haima/hmcp/utils/ConnectivityCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;,
        Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;,
        Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;,
        Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;,
        Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;
    }
.end annotation


# static fields
.field private static final ELAPSED_THRESHOLD_MS:J

.field private static final PING_TIME_OUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ConnectivityCheck"

.field private static final TCP_CONNECT_TIME_OUT:I = 0x2710

.field private static final WHAT:I

.field public static mConnCheckEnable:Z

.field private static sInstance:Lcom/haima/hmcp/utils/ConnectivityCheck;


# instance fields
.field private final mHandler:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xf

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->ELAPSED_THRESHOLD_MS:J

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->createHandlerThread()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/haima/hmcp/utils/ConnectivityCheck;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;

    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;-><init>(Lcom/haima/hmcp/utils/ConnectivityCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/haima/hmcp/utils/ConnectivityCheck;->mHandler:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;

    .line 4
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created EventLoop for thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->ELAPSED_THRESHOLD_MS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->pingCheck(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->tcpConnectCheck(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->dnsCheck(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->getIpv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->getIpv6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->pingForInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$900(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/utils/ConnectivityCheck;->tcpConnectForInetAddress(Ljava/lang/String;ILjava/net/InetAddress;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static config(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const-string v3, "config set connCheckEnable: %d"

    .line 14
    .line 15
    invoke-static {v0, v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    if-gtz p0, :cond_0

    .line 19
    .line 20
    sput-boolean v4, Lcom/haima/hmcp/utils/ConnectivityCheck;->mConnCheckEnable:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sput-boolean v1, Lcom/haima/hmcp/utils/ConnectivityCheck;->mConnCheckEnable:Z

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private static createHandlerThread()Landroid/os/Looper;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "ConnectivityCheck"

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private createTask(Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;Ljava/lang/String;Ljava/lang/String;I)Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck$1;->$SwitchMap$com$haima$hmcp$utils$ConnectivityCheck$CheckType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;

    .line 18
    .line 19
    invoke-direct {p1, p2, p3, p4}, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHostTask;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;

    .line 24
    .line 25
    invoke-direct {p1, p2, p3, p4}, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p1
.end method

.method private static dnsCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->dumpAddresses([Ljava/net/InetAddress;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p0, v2, v3

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    aput-object v0, v2, v3

    .line 25
    .line 26
    const-string v0, "%s dnsCheck InetAddress got Exception: %s"

    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object p0
.end method

.method private static dumpAddresses([Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, ";"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/ConnectivityCheck;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->sInstance:Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ConnectivityCheck;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->sInstance:Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->sInstance:Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 13
    .line 14
    return-object v0
.end method

.method private static getIpv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v3, :cond_1

    .line 10
    .line 11
    aget-object v5, v2, v4

    .line 12
    .line 13
    instance-of v6, v5, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    return-object v5

    .line 18
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object v0

    .line 22
    :catch_0
    move-exception v2

    .line 23
    sget-object v3, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p0, v4, v1

    .line 29
    .line 30
    invoke-static {v2}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x1

    .line 35
    aput-object p0, v4, v1

    .line 36
    .line 37
    const-string p0, "%s getIpv4Address got Exception: %s"

    .line 38
    .line 39
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static getIpv6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v3, :cond_1

    .line 10
    .line 11
    aget-object v5, v2, v4

    .line 12
    .line 13
    instance-of v6, v5, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    return-object v5

    .line 18
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object v0

    .line 22
    :catch_0
    move-exception v2

    .line 23
    sget-object v3, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p0, v4, v1

    .line 29
    .line 30
    invoke-static {v2}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x1

    .line 35
    aput-object p0, v4, v1

    .line 36
    .line 37
    const-string p0, "%s getIpv6Address got Exception: %s"

    .line 38
    .line 39
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static pingCheck(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1388

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p0, v1, v2

    .line 24
    .line 25
    const-string p0, "pingCheck get Exception: %s"

    .line 26
    .line 27
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method private static pingForInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 3

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->isReachable(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v1, p0

    .line 23
    .line 24
    const-string p0, "%s pingForInetAddress got Exception: %s"

    .line 25
    .line 26
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method private postRunnable(Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ConnectivityCheck;->mHandler:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, p1, v1, v2, v3}, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;->access$000(Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;JZ)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static tcpConnectCheck(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x2710

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    move-object v0, v1

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p1

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_1
    move-exception p1

    .line 34
    :goto_0
    :try_start_3
    sget-object v1, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "doTcpConnect for %s, got Exception: %s"

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aput-object p0, v3, v4

    .line 43
    .line 44
    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 p1, 0x1

    .line 49
    aput-object p0, v3, p1

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 61
    .line 62
    .line 63
    :catch_2
    :cond_0
    const/4 p0, 0x0

    .line 64
    :catch_3
    :goto_1
    return p0

    .line 65
    :goto_2
    if-eqz v0, :cond_1

    .line 66
    .line 67
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 68
    .line 69
    .line 70
    :catch_4
    :cond_1
    throw p0
.end method

.method private static tcpConnectForInetAddress(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->tcpConnectCheck(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    sget-object p2, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    aput-object p1, v0, p0

    .line 25
    .line 26
    const-string p0, "%s tcpConnectForInetAddress got Exception: %s"

    .line 27
    .line 28
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p2, p0}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method


# virtual methods
.method public postCheckTask(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->mConnCheckEnable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "postCheck not run for feature is disabled"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_5

    .line 18
    .line 19
    if-lez p3, :cond_5

    .line 20
    .line 21
    const v0, 0xffff

    .line 22
    .line 23
    .line 24
    if-gt p3, v0, :cond_5

    .line 25
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-static {p2}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-static {p2}, Lcom/haima/hmcp/utils/Utils;->isIPv6Address(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p2}, Lcom/haima/hmcp/utils/Utils;->isHostName(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;->HOST:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;

    .line 53
    .line 54
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/haima/hmcp/utils/ConnectivityCheck;->createTask(Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;Ljava/lang/String;Ljava/lang/String;I)Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->postRunnable(Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;->IPADDRESS:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;

    .line 63
    .line 64
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/haima/hmcp/utils/ConnectivityCheck;->createTask(Lcom/haima/hmcp/utils/ConnectivityCheck$CheckType;Ljava/lang/String;Ljava/lang/String;I)Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->postRunnable(Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void

    .line 72
    :cond_5
    :goto_2
    sget-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    aput-object p1, v1, v2

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    aput-object p2, v1, p1

    .line 82
    .line 83
    const/4 p1, 0x2

    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    aput-object p2, v1, p1

    .line 89
    .line 90
    const-string p1, "postCheck parameter is not valid %s:%s:%s"

    .line 91
    .line 92
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->iUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ConnectivityCheck;->mHandler:Lcom/haima/hmcp/utils/ConnectivityCheck$CheckHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/haima/hmcp/utils/ConnectivityCheck;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "Destroying EventLoop for thread "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " (id: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ")"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 61
    .line 62
    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/haima/hmcp/utils/ConnectivityCheck;->sInstance:Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 65
    .line 66
    return-void
.end method
