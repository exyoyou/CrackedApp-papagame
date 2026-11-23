.class public Lcom/haima/hmcp/business/HmcpRequest;
.super Lcom/haima/hmcp/business/HmcpRequestManager;
.source "SourceFile"


# static fields
.field private static volatile instance:Lcom/haima/hmcp/business/HmcpRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpRequest;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/business/HmcpRequest;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequest;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/haima/hmcp/business/HmcpRequest;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 25
    .line 26
    return-object p0
.end method

.method public static release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/BaseManager;->setHmcpPlayerListener(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->setHmcpSaasRequestListener(Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/haima/hmcp/business/HmcpRequest;->instance:Lcom/haima/hmcp/business/HmcpRequest;

    .line 26
    .line 27
    :cond_0
    return-void
.end method
