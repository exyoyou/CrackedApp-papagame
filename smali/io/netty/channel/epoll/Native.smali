.class public final Lio/netty/channel/epoll/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPOLLERR:I

.field public static final EPOLLET:I

.field public static final EPOLLIN:I

.field public static final EPOLLOUT:I

.field public static final EPOLLRDHUP:I

.field static final IS_SUPPORTING_RECVMMSG:Z

.field public static final IS_SUPPORTING_SENDMMSG:Z

.field public static final IS_SUPPORTING_TCP_FASTOPEN:Z

.field public static final KERNEL_VERSION:Ljava/lang/String;

.field public static final TCP_MD5SIG_MAXKEYLEN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/channel/epoll/Native;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->offsetofEpollData()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->loadNativeLibrary()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {}, Lio/netty/channel/unix/Socket;->initialize()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollin()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    .line 24
    .line 25
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollout()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput v0, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    .line 30
    .line 31
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollrdhup()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    .line 36
    .line 37
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollet()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sput v0, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 42
    .line 43
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollerr()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    .line 48
    .line 49
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingSendmmsg()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_SENDMMSG:Z

    .line 54
    .line 55
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingRecvmmsg()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_RECVMMSG:Z

    .line 60
    .line 61
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingTcpFastopen()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN:Z

    .line 66
    .line 67
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpMd5SigMaxKeyLen()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lio/netty/channel/epoll/Native;->TCP_MD5SIG_MAXKEYLEN:I

    .line 72
    .line 73
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->kernelVersion()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lio/netty/channel/epoll/Native;->KERNEL_VERSION:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p0, v0, v1, p1}, Lio/netty/channel/epoll/Native;->epollBusyWait0(IJI)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ltz p0, :cond_0

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    const-string p1, "epoll_wait"

    .line 21
    .line 22
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method private static native epollBusyWait0(IJI)I
.end method

.method private static native epollCreate()I
.end method

.method public static epollCtlAdd(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlAdd0(III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "epoll_ctl"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    throw p0
.end method

.method private static native epollCtlAdd0(III)I
.end method

.method public static epollCtlDel(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/netty/channel/epoll/Native;->epollCtlDel0(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "epoll_ctl"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    throw p0
.end method

.method private static native epollCtlDel0(II)I
.end method

.method public static epollCtlMod(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlMod0(III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "epoll_ctl"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    throw p0
.end method

.method private static native epollCtlMod0(III)I
.end method

.method private static native epollWait(IJII)I
.end method

.method static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result p1

    invoke-static {p0, v0, v1, p1, p2}, Lio/netty/channel/epoll/Native;->epollWait(IJII)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "epoll_wait"

    .line 6
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method public static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1
    invoke-static {p0, p1, v0}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

    move-result p0

    return p0

    :cond_0
    const v1, 0x7fffffff

    if-ne p3, v1, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v7, p3

    move v8, p4

    .line 2
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v3

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v5

    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v6

    invoke-static/range {v2 .. v8}, Lio/netty/channel/epoll/Native;->epollWait0(IJIIII)I

    move-result p0

    if-ltz p0, :cond_2

    return p0

    :cond_2
    const-string p1, "epoll_wait"

    .line 3
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

    move-result p0

    return p0
.end method

.method private static native epollWait0(IJIIII)I
.end method

.method private static native eventFd()I
.end method

.method public static native eventFdRead(I)V
.end method

.method public static native eventFdWrite(IJ)V
.end method

.method private static loadNativeLibrary()V
    .locals 4

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "linux"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "netty_transport_native_epoll"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x5f

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-class v2, Lio/netty/channel/epoll/Native;

    .line 52
    .line 53
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :try_start_0
    invoke-static {v0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    :try_start_1
    invoke-static {v1, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 66
    .line 67
    const-string v2, "Failed to load {}"

    .line 68
    .line 69
    invoke-interface {v1, v2, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-static {v3, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v3

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v1, "Only supported on Linux"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public static newEpollCreate()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    invoke-static {}, Lio/netty/channel/epoll/Native;->epollCreate()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static newEventFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    invoke-static {}, Lio/netty/channel/epoll/Native;->eventFd()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static newTimerFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    invoke-static {}, Lio/netty/channel/epoll/Native;->timerFd()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static native offsetofEpollData()I
.end method

.method static recvmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/Native;->recvmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p1, "recvmmsg"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static native recvmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
.end method

.method static sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/Native;->sendmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "sendmmsg"

    .line 3
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static sendmmsg(I[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {p0, v0, p1, p2, p3}, Lio/netty/channel/epoll/Native;->sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result p0

    return p0
.end method

.method private static native sendmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
.end method

.method public static native sizeofEpollEvent()I
.end method

.method public static splice(IJIJJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lio/netty/channel/epoll/Native;->splice0(IJIJJ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p1, "splice"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static native splice0(IJIJJ)I
.end method

.method private static native timerFd()I
.end method

.method static native timerFdRead(I)V
.end method

.method static native timerFdSetTime(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
