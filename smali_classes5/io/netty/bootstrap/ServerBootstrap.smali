.class public Lio/netty/bootstrap/ServerBootstrap;
.super Lio/netty/bootstrap/AbstractBootstrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/bootstrap/ServerBootstrap$ServerBootstrapAcceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/bootstrap/AbstractBootstrap<",
        "Lio/netty/bootstrap/ServerBootstrap;",
        "Lio/netty/channel/ServerChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final childAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile childGroup:Lio/netty/channel/EventLoopGroup;

.field private volatile childHandler:Lio/netty/channel/ChannelHandler;

.field private final childOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lio/netty/bootstrap/ServerBootstrapConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/bootstrap/ServerBootstrap;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/bootstrap/AbstractBootstrap;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 4
    new-instance v0, Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/ServerBootstrapConfig;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    return-void
.end method

.method private constructor <init>(Lio/netty/bootstrap/ServerBootstrap;)V
    .locals 4

    .line 5
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;-><init>(Lio/netty/bootstrap/AbstractBootstrap;)V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 8
    new-instance v2, Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-direct {v2, p0}, Lio/netty/bootstrap/ServerBootstrapConfig;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    .line 9
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 10
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    iput-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 11
    iget-object v2, p1, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, p1, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p1, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lio/netty/bootstrap/ServerBootstrap;)Lio/netty/bootstrap/ServerBootstrapConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public childAttr(Lio/netty/util/AttributeKey;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;TT;)",
            "Lio/netty/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 1
    const-string v0, "childKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method final childAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/bootstrap/AbstractBootstrap;->copiedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public childGroup()Lio/netty/channel/EventLoopGroup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public childHandler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1

    const-string v0, "childHandler"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    return-object p0
.end method

.method final childHandler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)",
            "Lio/netty/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 1
    const-string v0, "childOption"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p2, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method final childOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {v1}, Lio/netty/bootstrap/AbstractBootstrap;->copiedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public bridge synthetic clone()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->clone()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/netty/bootstrap/ServerBootstrap;
    .locals 1

    .line 3
    new-instance v0, Lio/netty/bootstrap/ServerBootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/ServerBootstrap;-><init>(Lio/netty/bootstrap/ServerBootstrap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->clone()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/bootstrap/AbstractBootstrapConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v0

    return-object v0
.end method

.method public final config()Lio/netty/bootstrap/ServerBootstrapConfig;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    return-object v0
.end method

.method public bridge synthetic group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object p1

    return-object p1
.end method

.method public group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p1}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object p1

    return-object p1
.end method

.method public group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 4
    iget-object p1, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    if-nez p1, :cond_0

    const-string p1, "childGroup"

    .line 5
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/EventLoopGroup;

    iput-object p1, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "childGroup set already"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method init(Lio/netty/channel/Channel;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrap;->newOptionsArray()[Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lio/netty/bootstrap/AbstractBootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrap;->attrs0()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lio/netty/bootstrap/AbstractBootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lio/netty/bootstrap/AbstractBootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v4, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    .line 34
    .line 35
    iget-object v5, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    .line 36
    .line 37
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v2, p0, Lio/netty/bootstrap/ServerBootstrap;->childOptions:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Lio/netty/bootstrap/AbstractBootstrap;->EMPTY_OPTION_ARRAY:[Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v6, v2

    .line 53
    check-cast v6, [Ljava/util/Map$Entry;

    .line 54
    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childAttrs:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v7, v0

    .line 67
    check-cast v7, [Ljava/util/Map$Entry;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    .line 71
    .line 72
    new-instance v1, Lio/netty/bootstrap/ServerBootstrap$1;

    .line 73
    .line 74
    move-object v2, v1

    .line 75
    move-object v3, p0

    .line 76
    invoke-direct/range {v2 .. v7}, Lio/netty/bootstrap/ServerBootstrap$1;-><init>(Lio/netty/bootstrap/ServerBootstrap;Lio/netty/channel/EventLoopGroup;Lio/netty/channel/ChannelHandler;[Ljava/util/Map$Entry;[Ljava/util/Map$Entry;)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object v1, v0, v2

    .line 81
    .line 82
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p1
.end method

.method public bridge synthetic validate()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/bootstrap/ServerBootstrap;->validate()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lio/netty/bootstrap/ServerBootstrap;
    .locals 2

    .line 2
    invoke-super {p0}, Lio/netty/bootstrap/AbstractBootstrap;->validate()Lio/netty/bootstrap/AbstractBootstrap;

    .line 3
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/netty/bootstrap/ServerBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "childGroup is not set. Using parentGroup instead."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->config:Lio/netty/bootstrap/ServerBootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    iput-object v0, p0, Lio/netty/bootstrap/ServerBootstrap;->childGroup:Lio/netty/channel/EventLoopGroup;

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childHandler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
