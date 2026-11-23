.class public Lcom/haima/hmcp/utils/DevDebugManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mDevDebugManager:Lcom/haima/hmcp/utils/DevDebugManager;


# instance fields
.field private mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/DevDebugManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugManager:Lcom/haima/hmcp/utils/DevDebugManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/DevDebugManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugManager:Lcom/haima/hmcp/utils/DevDebugManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/DevDebugManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/DevDebugManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugManager:Lcom/haima/hmcp/utils/DevDebugManager;

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
    sget-object v0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugManager:Lcom/haima/hmcp/utils/DevDebugManager;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public getDevDebugConfig()Lcom/haima/hmcp/beans/DevDebugConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/beans/DevDebugConfig;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 13
    .line 14
    return-object v0
.end method

.method public setDevDebugConfig(Lcom/haima/hmcp/beans/DevDebugConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/DevDebugManager;->mDevDebugConfig:Lcom/haima/hmcp/beans/DevDebugConfig;

    .line 2
    .line 3
    return-void
.end method
