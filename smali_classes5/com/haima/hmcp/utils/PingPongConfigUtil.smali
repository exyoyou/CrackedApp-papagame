.class public Lcom/haima/hmcp/utils/PingPongConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_COLON:Ljava/lang/String; = ":"

.field private static final PING_DEFAULT_DELAY:I = 0x64

.field private static final PING_DEFAULT_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "PingPongConfigUtil"

.field private static volatile mInstance:Lcom/haima/hmcp/utils/PingPongConfigUtil;


# instance fields
.field private mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static getInstance()Lcom/haima/hmcp/utils/PingPongConfigUtil;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mInstance:Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mInstance:Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/PingPongConfigUtil;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mInstance:Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mInstance:Lcom/haima/hmcp/utils/PingPongConfigUtil;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public getWebSocketConfig()Lcom/haima/hmcp/beans/WebSocketConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "WebSocketConfig: is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/haima/hmcp/beans/WebSocketConfig;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/WebSocketConfig;->getPing2Interval()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gtz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 28
    .line 29
    const v1, 0xea60

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/WebSocketConfig;->setPing2Interval(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/WebSocketConfig;->getInstancePingPongCost()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-gtz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 44
    .line 45
    const/16 v1, 0x64

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/WebSocketConfig;->setInstancePingPongCost(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 51
    .line 52
    return-object v0
.end method

.method public setWebSocketConfig(Lcom/haima/hmcp/beans/WebSocketConfig;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/utils/PingPongConfigUtil;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "WebSocketConfig:"

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
