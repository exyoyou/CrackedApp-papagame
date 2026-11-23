.class public Lcom/haima/hmcp/beans/DevDebugConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private delayConnectWsService:Z

.field private delayConnectWsServiceTime:J

.field private ignoreEndOrderAck:Z

.field private ignoreStartOrderAck:Z

.field private notConnectWsService:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreEndOrderAck:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreStartOrderAck:Z

    .line 8
    .line 9
    const-wide/16 v1, 0xbb8

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsServiceTime:J

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsService:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->notConnectWsService:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getDelayConnectWsServiceTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsServiceTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ignoreEndOrderAck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreEndOrderAck:Z

    .line 2
    .line 3
    return v0
.end method

.method public ignoreStartOrderAck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreStartOrderAck:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDelayConnectWsService()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsService:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNotConnectWsService()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->notConnectWsService:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDelayConnectWsService(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsService:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDelayConnectWsServiceTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->delayConnectWsServiceTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setIgnoreEndOrderAck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreEndOrderAck:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIgnoreStartOrderAck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->ignoreStartOrderAck:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotConnectWsService(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DevDebugConfig;->notConnectWsService:Z

    .line 2
    .line 3
    return-void
.end method
